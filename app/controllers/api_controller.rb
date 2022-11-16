class ApiController < ApplicationController
    protect_from_forgery with: :null_session
    def show_user

        @user = User.find(params[:id])
        @simulacion = @user.simulaciones_pendientes.first

        if @simulacion.nil?
            data = {}
        else
            data = {
                :id_simulacion => @simulacion.id,
                :nombre_simulacion => @simulacion.tipo,
                :perspectiva => @simulacion.perspectiva,
                :id_usuario => @user.id,
                :nombre_usuario => @user.nombre,
                :apellido_usuario => @user.apellido,
            }
        end
        require 'json'
        render json: data.to_json
    end

    def simulacion_realizada

        @simulacion = Simulation.find_by_id(params[:id])

        @simulacion.update(decisiones: params[:decisiones])
        
 
          
        if @simulacion.nil?
            render json: -1
        else
            if @simulacion.realizada
                render json: 0
            else
                @simulacion.update(realizada: true)
                if @simulacion.save
                    render json: 1
                else
                    render json: 0
                end
            end
        end
    end

    def get_simulations
        simulations = Simulation.where(realizada: false).all

        data = []

        simulations.each do |simulacion|
            user = User.find(simulacion.user_id)
            data << {
                :id_simulacion => simulacion.id,
                :nombre_simulacion => simulacion.tipo,
                :perspectiva => simulacion.perspectiva,
                :id_usuario => user.id,
                :nombre_usuario => user.nombre,
                :apellido_usuario => user.apellido,
                :empresa => user.empresa.nombre,
            }
        end
        data2 = { :simulaciones => data}
        require 'json'
        render json: JSON.pretty_generate(data2)

    end

end