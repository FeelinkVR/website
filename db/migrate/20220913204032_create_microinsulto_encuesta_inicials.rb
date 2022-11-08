class CreateMicroinsultoEncuestaInicials < ActiveRecord::Migration[6.0]
  def change
    create_table :microinsulto_encuesta_inicials do |t|
      t.references :user, null: false, unique: true
      t.boolean :pregunta1
      t.boolean :pregunta2
      t.boolean :pregunta3
      t.boolean :pregunta4
      t.boolean :pregunta5
      t.boolean :pregunta6

      t.timestamps
    end
  end
end
