class CreateMicroinvalidacionEncuestaFinals < ActiveRecord::Migration[6.0]
  def change
    create_table :microinvalidacion_encuesta_finals do |t|
      t.references :user, null: false, unique: true
      t.boolean :pregunta1
      t.boolean :pregunta2
      t.boolean :pregunta3
      t.boolean :pregunta4

      t.timestamps
    end
  end
end
