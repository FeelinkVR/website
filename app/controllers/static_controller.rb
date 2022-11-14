class StaticController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @empresa = Empresa.find(@user.empresa_id)

    if !current_user.encargado
      redirect_to simulaciones_path
    end

    @nota1 = @empresa.promedio_encuesta_inicial_microinsulto 
    @nota2 = @empresa.promedio_encuesta_final_microinsulto
    @nota3 = @empresa.promedio_encuesta_inicial_microasalto
    @nota4 = @empresa.promedio_encuesta_final_microasalto
    @nota5 = @empresa.promedio_encuesta_inicial_microinvalidacion
    @nota6 = @empresa.promedio_encuesta_final_microinvalidacion

    @presencia_yes = @empresa.presencia_microinsultos[0] + @empresa.presencia_microasaltos[0] + @empresa.presencia_microinvalidaciones[0]
    @presencia_no = @empresa.presencia_microinsultos[1] + @empresa.presencia_microasaltos[1] + @empresa.presencia_microinvalidaciones[1]
    @presencia_quizas = @empresa.presencia_microinsultos[2] + @empresa.presencia_microasaltos[2] + @empresa.presencia_microinvalidaciones[2]

  end

  def global
    if !current_user.encargado
      redirect_to simulaciones_path
    end

    empresas = Empresa.all
    count = empresas.count
    
    @nota1 = 0
    @nota2 = 0
    @nota3 = 0
    @nota4 = 0
    @nota5 = 0
    @nota6 = 0

    @contador1 = 0
    @contador2 = 0
    @contador3 = 0
    @contador4 = 0
    @contador5 = 0
    @contador6 = 0
    @contador7 = 0
    @contador8 = 0
    @contador9 = 0

    
    empresas.each do |empresa|
      @nota1 += empresa.promedio_encuesta_inicial_microinsulto
      @nota2 += empresa.promedio_encuesta_final_microinsulto
      @nota3 += empresa.promedio_encuesta_inicial_microasalto
      @nota4 += empresa.promedio_encuesta_final_microasalto
      @nota5 += empresa.promedio_encuesta_inicial_microinvalidacion
      @nota6 += empresa.promedio_encuesta_final_microinvalidacion

      @contador1 += empresa.contador_decisiones("Testigo", -1)
      @contador2 += empresa.contador_decisiones("Testigo", 0)
      @contador3 += empresa.contador_decisiones("Testigo", 1)
      @contador4 += empresa.contador_decisiones("Victima", -1)
      @contador5 += empresa.contador_decisiones("Victima", 0)
      @contador6 += empresa.contador_decisiones("Victima", 1)
      @contador7 += empresa.contador_decisiones("Victimario", -1)
      @contador8 += empresa.contador_decisiones("Victimario", 0)
      @contador9 += empresa.contador_decisiones("Victimario", 1)
    end

    @nota1 = @nota1/count
    @nota2 = @nota2/count
    @nota3 = @nota3/count
    @nota4 = @nota4/count
    @nota5 = @nota5/count
    @nota6 = @nota6/count



  end

  def simulaciones
    @user = current_user
  end

  def resultados
    @user = User.find(params[:user_id])
    @simulaciones = @user.simulaciones_realizadas
    empresa = Empresa.find(@user.empresa_id)

    if @user.encargado  
      @nota1 = empresa.promedio_encuesta_inicial_microinsulto 
      @nota2 = empresa.promedio_encuesta_final_microinsulto
      @nota3 = empresa.promedio_encuesta_inicial_microasalto
      @nota4 = empresa.promedio_encuesta_final_microasalto
      @nota5 = empresa.promedio_encuesta_inicial_microinvalidacion
      @nota6 = empresa.promedio_encuesta_final_microinvalidacion
      
    else
      @nota1 = @user.microinsulto_encuesta_inicial.nil? ? "0" : @user.microinsulto_encuesta_inicial.porcentaje_bueno
      @nota2 = @user.microinsulto_encuesta_final.nil? ? "0" : @user.microinsulto_encuesta_final.porcentaje_bueno
      @nota3 = @user.microasalto_encuesta_inicial.nil? ? "0" : @user.microasalto_encuesta_inicial.porcentaje_bueno
      @nota4 = @user.microasalto_encuesta_final.nil? ? "0" : @user.microasalto_encuesta_final.porcentaje_bueno
      @nota5 = @user.microinvalidacion_encuesta_inicial.nil? ? "0" : @user.microinvalidacion_encuesta_inicial.porcentaje_bueno
      @nota6 = @user.microinvalidacion_encuesta_final.nil? ? "0" : @user.microinvalidacion_encuesta_final.porcentaje_bueno
    end


  end

  def microinsulto
     @user = User.find(params[:user_id])
  end

  def microasalto
    @user = User.find(params[:user_id])
  end

  def microinvalidacion
    @user = User.find(params[:user_id])
  end

end
