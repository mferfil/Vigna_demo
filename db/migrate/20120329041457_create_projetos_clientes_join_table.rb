class CreateProjetosClientesJoinTable < ActiveRecord::Migration
  def up
    create_table :projetos_clientes, :id => false do |t|
      t.integer :projeto_id
      t.integer :cliente_id
    end
  end

  def down
    drop_table :projetos_clientes
  end
end
