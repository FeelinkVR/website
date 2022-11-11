class MicroinsultoEncuestaInicialsController < ApplicationController

    def new
        @user = current_user
        if !@user.microinsulto_encuesta_inicial.nil?
            flash[:alert] = "Ya has realizado la encuesta inicial"
            redirect_to microinsulto_path(@user.id)
        end
        @encuesta = MicroinsultoEncuestaInicial.new()
    end

    def show
        @encuesta = MicroinsultoEncuestaInicial.find(params[:id])
        @user = User.find(params[:user_id])
    end

    def create
        @user = User.find(params[:user_id])
        if !@user.microinsulto_encuesta_inicial.nil?
            flash[:alert] = "Ya has realizado la encuesta inicial"
            redirect_to microinsulto_path(@user.id)
        end
        @encuesta = MicroinsultoEncuestaInicial.new(create_params)
        @encuesta.update(user_id: params[:user_id])

        if @encuesta.save
            flash[:notice] = "Encuesta completada con exito"
            redirect_to user_microinsulto_encuesta_inicial_path(user_id: @user, id: @encuesta.id)
        else
            flash[:alert] = @encuesta.errors.full_messages.join(', ')
        end
    end

    private

    def create_params
        if params.has_key?(:microinsulto_encuesta_inicial)
            params.fetch(:microinsulto_encuesta_inicial)
            .permit(:pregunta1, :pregunta2, :pregunta3, :pregunta4, :pregunta5, :pregunta6)
        end
    end

end
