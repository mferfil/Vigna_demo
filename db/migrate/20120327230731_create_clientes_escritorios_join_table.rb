class CreateClientesEscritoriosJoinTable < ActiveRecord::Migration
  def up
    create_table :clientes_escritorios, :id => false do |t|
      t.integer :cliente_id
      t.integer :escritorio_id
    end
  end

  def down
    drop_table :clientes_escritorios
  end
end