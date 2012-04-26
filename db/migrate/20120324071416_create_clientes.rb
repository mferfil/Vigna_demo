class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome, :limit => 80
      t.string :endereco
      t.string :cidade_uf
      t.string :pais, :limit => 80
      t.string :contato, :limit => 80
      t.string :telefone
      t.timestamps
    end
  end
end
