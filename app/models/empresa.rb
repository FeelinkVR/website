class Empresa < ApplicationRecord

    validates :nombre, presence: true
    validates :direccion, presence: true
    validates :comuna, presence: true
    validates :region, presence: true
    validates :rut, presence: false

    has_many :users, dependent: :destroy

    #---------Empleados------------
    def empleados
        User.where(empresa_id: self.id).where(encargado: false).all
    end

    def encargados
        User.where(empresa_id: self.id).where(encargado: true).all
    end

    #----------------Encuestas-----------------
    def promedio_encuesta_inicial_microinsulto
        promedio = 0
        encuestas_iniciales = []
        self.empleados.each do |empleado|
            if !empleado.microinsulto_encuesta_inicial.nil?
                encuestas_iniciales << empleado.microinsulto_encuesta_inicial
            end
        end
        if !encuestas_iniciales.empty?
            cant_encuestas = encuestas_iniciales.length()
            suma = 0
            encuestas_iniciales.each do |encuesta|
                suma += encuesta.porcentaje_bueno
            end
            promedio = suma/cant_encuestas
        else
            0
        end
    end

    def promedio_encuesta_final_microinsulto
        promedio = 0
        encuestas_finales = []
        self.empleados.each do |empleado|
            if !empleado.microinsulto_encuesta_final.nil?
                encuestas_finales << empleado.microinsulto_encuesta_final
            end
        end
        if !encuestas_finales.empty?
            cant_encuestas = encuestas_finales.length()
            suma = 0
            encuestas_finales.each do |encuesta|
                suma += encuesta.porcentaje_bueno
            end
            promedio = suma/cant_encuestas
        else
            0
        end
    end

    def promedio_encuesta_inicial_microasalto
        promedio = 0
        encuestas_iniciales = []
        self.empleados.each do |empleado|
            if !empleado.microasalto_encuesta_inicial.nil?
                encuestas_iniciales << empleado.microasalto_encuesta_inicial
            end
        end
        if !encuestas_iniciales.empty?
            cant_encuestas = encuestas_iniciales.length()
            suma = 0
            encuestas_iniciales.each do |encuesta|
                suma += encuesta.porcentaje_bueno
            end
            promedio = suma/cant_encuestas
        else
            0
        end
    end

    def promedio_encuesta_final_microasalto
        promedio = 0
        encuestas_iniciales = []
        self.empleados.each do |empleado|
            if !empleado.microasalto_encuesta_final.nil?
                encuestas_iniciales << empleado.microasalto_encuesta_final
            end
        end
        if !encuestas_iniciales.empty?
            cant_encuestas = encuestas_iniciales.length()
            suma = 0
            encuestas_iniciales.each do |encuesta|
                suma += encuesta.porcentaje_bueno
            end
            promedio = suma/cant_encuestas
        else
            0
        end
    end

    def promedio_encuesta_inicial_microinvalidacion
        promedio = 0
        encuestas_iniciales = []
        self.empleados.each do |empleado|
            if !empleado.microinvalidacion_encuesta_inicial.nil?
                encuestas_iniciales << empleado.microinvalidacion_encuesta_inicial
            end
        end
        if !encuestas_iniciales.empty?
            cant_encuestas = encuestas_iniciales.length()
            suma = 0
            encuestas_iniciales.each do |encuesta|
                suma += encuesta.porcentaje_bueno
            end
            promedio = suma/cant_encuestas
        else
            0
        end
    end

    def promedio_encuesta_final_microinvalidacion
        promedio = 0
        encuestas_iniciales = []
        self.empleados.each do |empleado|
            if !empleado.microinvalidacion_encuesta_final.nil?
                encuestas_iniciales << empleado.microinvalidacion_encuesta_final
            end
        end
        if !encuestas_iniciales.empty?
            cant_encuestas = encuestas_iniciales.length()
            suma = 0
            encuestas_iniciales.each do |encuesta|
                suma += encuesta.porcentaje_bueno
            end
            promedio = suma/cant_encuestas
        else
            0
        end
    end


    #----------------Simulaciones--------------------
    def cantidad_simulaciones_realizadas
        count = 0
        self.empleados.map{|empleado| count = count + empleado.simulaciones_realizadas.count}
        count
    end

    def cantidad_simulaciones_pendientes
        count = 0
        self.empleados.map{|empleado| count = count + empleado.simulaciones_pendientes.count}
        count
    end

    #--------------Tendecia de conductas------------------
    def conducta_general
        promedio = 0
        simulaciones = self.empleados.map{|empleado| empleado.simulaciones_realizadas}.flatten

        conductas = simulaciones.each{|simulacion| promedio += simulacion.conducta_promedio }
        promedio = promedio/simulaciones.count
    end

    def contador_decisiones(perspectiva,conducta)
        contador = 0
        total = 0
        self.empleados.each do |empleado|
            simulaciones = Simulation.where(user_id: empleado.id).where(perspectiva:perspectiva).where(realizada: true).all
            if !simulaciones.nil?
                simulaciones.each do |simulacion|
                    json= JSON.parse simulacion.decisiones
                    conductas= json['conducta']
                    conductas.each{|c| c == conducta ? contador += 1 : 0}
                    total += conductas.count
                end
            end
        end
        contador/total.to_f
    end
end
