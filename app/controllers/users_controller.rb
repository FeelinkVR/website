class UsersController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new()
        @empresa = Empresa.find(params[:empresa_id])
    end

    def create
        @user = User.new(create_params)
        @user.empresa_id = params[:empresa_id]
        if @user.save
            flash[:notice] = "#{@user.nombre} #{@user.apellido} ha sido añadido con exito"
        else
            flash[:alert] = @user.errors.full_messages.join(', ')
            
        end
        redirect_to empresa_path(params[:empresa_id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(create_params)

        if @user.save
            flash[:notice] = "Usuario modificado con exito"
            redirect_to user_path
        else
            flash[:alert] = @user.errors.full_messages.join(', ')
            redirect_to edit_user_path
        end
    end

    def destroy
        @user = User.find(params[:id])
        empresa = Empresa.find(@user.empresa_id)
        name = @user.nombre
        if @user.destroy
            flash[:notice] = "#{name} se ha eliminado con exito"
            redirect_to empresa_path(empresa.id)
        else
            flash[:alert] = "No se pudo eliminar #{name}"
            redirect_to show_user_path
        end
    end

    private

    def create_params
        params.require(:user).permit(:nombre, :email, :apellido, :telefono, :encargado, :password, :password_confirmation)
      end
end
