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
    @nota4 = "0"
    @nota5 = @empresa.promedio_encuesta_inicial_microinvalidacion
    @nota6 = @empresa.promedio_encuesta_final_microinvalidacion

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
      @nota5 = empresa.promedio_encuesta_inicial_microinvalidacion
    else
      @nota1 = @user.microinsulto_encuesta_inicial.nil? ? "0" : @user.microinsulto_encuesta_inicial.porcentaje_bueno
      @nota2 = @user.microinsulto_encuesta_final.nil? ? "0" : @user.microinsulto_encuesta_final.porcentaje_bueno
      @nota3 = @user.microasalto_encuesta_inicial.nil? ? "0" : @user.microasalto_encuesta_inicial.porcentaje_bueno
      @nota5 = @user.microinvalidacion_encuesta_inicial.nil? ? "0" : @user.microinvalidacion_encuesta_inicial.porcentaje_bueno
      @nota6 = @user.microinvalidacion_encuesta_final.nil? ? "0" : @user.microinvalidacion_encuesta_final.porcentaje_bueno
    end

    @nota4 = "0"

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
