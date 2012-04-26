class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :titulo
      t.integer :cliente_id
#colaborador_id = responsavel pelo projeto
      t.integer :colaborador_id
      t.date :data_inicio
      t.date :data_termino
      t.string :status
      t.timestamps
    end
  end
end
