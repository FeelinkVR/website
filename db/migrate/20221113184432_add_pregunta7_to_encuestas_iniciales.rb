class AddPregunta7ToEncuestasIniciales < ActiveRecord::Migration[6.0]
  def change
    add_column :microinsulto_encuesta_inicials, :pregunta7, :boolean
    add_column :microasalto_encuesta_inicials, :pregunta7, :boolean
    add_column :microinvalidacion_encuesta_inicials, :pregunta7, :boolean
  end
end
