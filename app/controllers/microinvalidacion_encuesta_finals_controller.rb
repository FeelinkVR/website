class MicroinvalidacionEncuestaFinalsController < ApplicationController

    def show
        @encuesta = MicroinvalidacionEncuestaFinal.find(params[:id])
        @user = User.find(params[:user_id])
    end

    def new
        @user = User.find(params[:user_id])
        if !@user.microinvalidacion_encuesta_final.nil?
            flash[:alert] = "Ya has realizado la encuesta inicial"
            redirect_to simulaciones_path
        end
        @encuesta = MicroinvalidacionEncuestaFinal.new()
    end

    def create
        @user = User.find(params[:user_id])
        if !@user.microinvalidacion_encuesta_final.nil?
            flash[:alert] = "Ya has realizado la encuesta final"
            redirect_to microinvalidacion_path(@user.id)
        end
        @encuesta = MicroinvalidacionEncuestaFinal.new(create_params)
        @encuesta.update(user_id: params[:user_id])

        if @encuesta.save
            flash[:notice] = "Encuesta completada con exito"
            redirect_to user_microinvalidacion_encuesta_final_path(user_id: @user, id: @encuesta.id)
        else
            flash[:alert] = @encuesta.errors.full_messages.join(', ')
        end
    end

    private

    def create_params
        if params.has_key?(:microinvalidacion_encuesta_final)
            params.fetch(:microinvalidacion_encuesta_final)
            .permit(:pregunta1, :pregunta2, :pregunta3, :pregunta4)
        end
    end
end
