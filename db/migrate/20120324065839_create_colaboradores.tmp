class CreateColaboradores < ActiveRecord::Migration
  def change
    create_table :colaboradores do |t|
      t.string :nome, :limit => 20
      t.string :sobrenome, :limit => 40
      t.integer :escritorio_id
      t.string :cargo, :limit => 30
      t.string :vinculo, :limit => 30
      t.date :aniversario 
      t.timestamps
    end
  end
end
