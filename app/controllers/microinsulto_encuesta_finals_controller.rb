class MicroinsultoEncuestaFinalsController < ApplicationController
    def new
        @user = User.find(params[:user_id])
        if !@user.microinsulto_encuesta_final.nil?
            flash[:alert] = "Ya has realizado la encuesta inicial"
            redirect_to simulaciones_path
        end
        @encuesta = MicroinsultoEncuestaFinal.new()
    end

    def show
        @encuesta = MicroinsultoEncuestaFinal.find(params[:id])
        @user = User.find(params[:user_id])
    end

    def create
        @user = User.find(params[:user_id])
        if !@user.microinsulto_encuesta_final.nil?
            flash[:alert] = "Ya has realizado la encuesta final"
            redirect_to microinsulto_path(@user.id)
        end
        @encuesta = MicroinsultoEncuestaFinal.new(create_params)
        @encuesta.update(user_id: params[:user_id])

        if @encuesta.save
            flash[:notice] = "Encuesta completada con exito"
            redirect_to user_microinsulto_encuesta_final_path(user_id: @user, id: @encuesta.id)
        else
            flash[:alert] = @encuesta.errors.full_messages.join(', ')
        end
    end

    private

    def create_params
        if params.has_key?(:microinsulto_encuesta_final)
            params.fetch(:microinsulto_encuesta_final)
            .permit(:pregunta1, :pregunta2, :pregunta3, :pregunta4)
        end
    end
end
