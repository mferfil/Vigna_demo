class CreateEscritorios < ActiveRecord::Migration
  def change
    create_table :escritorios do |t|
      t.string :nome, :limit => 80
      t.string :endereco, :limit => 160
      t.string :cidade_uf
      t.string :pais
      t.string :telefone, :limit => 80
      t.integer :colaborador_id
      t.timestamps
    end
  end
end

