class SimulationsController < ApplicationController

    def show
        @simulation = Simulation.find(params[:id])
    end

    def new
        @user = User.find(params[:user_id])
    end

    def create
        @user = User.find(params[:user_id])
        @simulation = Simulation.new(create_params)
        @simulation.update(user_id: params[:user_id], realizada: false)

        if @simulation.save
            flash[:notice] = "Simulación de #{@simulation.tipo} como #{@simulation.perspectiva} asignada con éxito"
            
            redirect_to empresa_path(current_user.empresa_id)
        else
            flash[:alert] = @simulation.errors.full_messages.join(", ")
        end
    end

    def destroy
        user = User.find(params[:user_id])
        @simulation = Simulation.find(params[:simulation_id])
        if @simulation.destroy
            flash[:notice] = "Simulación de #{@simulation.tipo} como #{@simulation.perspectiva} eliminada con éxito"
        else
            flash[:alert] = @simulation.errors.full_messages.join(", ")
        end
        redirect_to empresa_path(user.empresa_id)
    end
    
    def marcar_realizada
        @simulation = @simulation = Simulation.find(params[:simulation_id])
        @simulation.update(realizada: true)

        if @simulation.save
            flash[:notice] = "Simulación de #{@simulation.tipo} como #{@simulation.perspectiva} realizada"
        else
            flash[:alert] = @simulation.errors.full_messages.join(", ")
        end
        redirect_to show_user_path(params[:user_id])
    end

    private

    def create_params
      params.require(:simulation).permit(:tipo, :perspectiva)
    end

end
