class EmpresasController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource

    def show
        @empresa = Empresa.find(params[:id])
    end

    def index
        @empresas = Empresa.all
    end

    def def new
        @empresa = Empresa.new()
    end
    
    def create
        @empresa = Empresa.new(create_params)
        
        if @empresa.save
            flash[:notice] = "#{@empresa.nombre} ha sido creada con exito"
            redirect_to empresas_path
        else
            flash[:alert] = @empresa.errors.full_messages.join(', ')
            redirect_to new_empresa_path
        end
    end

    def edit
        @empresa = Empresa.find(params[:id])
    end

    def update
        @empresa = Empresa.find(params[:id])
        @empresa.update(create_params)

        if @empresa.save
            flash[:notice] = "#{@empresa.nombre} ha sido actualizada con exito"
            redirect_to empresa_path(id: @empresa.id)
        else
            flash[:alert] = @empresa.errors.full_messages.join(', ')
            redirect_to edit_empresa_path
        end
    end

    def destroy
        @empresa = Empresa.find(params[:id])
        name = @empresa.nombre
        if @empresa.destroy
            flash[:notice] = "#{name} se ha eliminado con exito"
            redirect_to empresas_path
        else
            flash[:alert] = "No se pudo eliminar #{name}"
            redirect_to empresa_path(params[:id])
        end
    end

    private

    def create_params
      params.require(:empresa).permit(:nombre, :direccion, :comuna, :oficina, :region)
    end
end
