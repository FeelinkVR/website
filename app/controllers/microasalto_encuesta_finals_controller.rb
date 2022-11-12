class MicroasaltoEncuestaFinalsController < ApplicationController
    def show
        @encuesta = MicroasaltoEncuestaFinal.find(params[:id])
        @user = User.find(params[:user_id])
    end

    def new
        @user = User.find(params[:user_id])
        if !@user.microasalto_encuesta_final.nil?
            flash[:alert] = "Ya has realizado la encuesta inicial"
            redirect_to simulaciones_path
        end
        @encuesta = MicroasaltoEncuestaFinal.new()
    end

    def create
        @user = User.find(params[:user_id])
        if !@user.microasalto_encuesta_final.nil?
            flash[:alert] = "Ya has realizado la encuesta final"
            redirect_to Microasalto_path(@user.id)
        end
        @encuesta = MicroasaltoEncuestaFinal.new(create_params)
        @encuesta.update(user_id: params[:user_id])

        if @encuesta.save
            flash[:notice] = "Encuesta completada con exito"
            redirect_to user_microasalto_encuesta_final_path(user_id: @user, id: @encuesta.id)
        else
            flash[:alert] = @encuesta.errors.full_messages.join(', ')
        end
    end

    private

    def create_params
        if params.has_key?(:microasalto_encuesta_final)
            params.fetch(:microasalto_encuesta_final)
            .permit(:pregunta1, :pregunta2, :pregunta3, :pregunta4)
        end
    end
end
