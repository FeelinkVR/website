class MicroasaltoEncuestaInicialsController < ApplicationController

    def show
        @encuesta = MicroasaltoEncuestaInicial.find(params[:id])
        @user = User.find(params[:user_id])
    end

    def new
        @user = current_user
        if !@user.microasalto_encuesta_inicial.nil?
            flash[:alert] = "Ya has realizado la encuesta inicial"
            redirect_to microasalto_path(@user.id)
        end
        @encuesta = MicroasaltoEncuestaInicial.new()
    end

    def create
        @user = User.find(params[:user_id])
        if !@user.microasalto_encuesta_inicial.nil?
            flash[:alert] = "Ya has realizado la encuesta inicial"
            redirect_to microasalto_path(@user.id)
        end
        @encuesta = MicroasaltoEncuestaInicial.new(create_params)
        @encuesta.update(user_id: params[:user_id])

        if @encuesta.save
            flash[:notice] = "Encuesta completada con exito"
            redirect_to user_microasalto_encuesta_inicial_path(user_id: @user, id: @encuesta.id)
        else
            flash[:alert] = @encuesta.errors.full_messages.join(', ')
        end
    end

    private

    def create_params
        if params.has_key?(:microasalto_encuesta_inicial)
            params.fetch(:microasalto_encuesta_inicial)
            .permit(:pregunta1, :pregunta2, :pregunta3, :pregunta4, :pregunta5, :pregunta6, :pregunta7)
        end
    end
end
