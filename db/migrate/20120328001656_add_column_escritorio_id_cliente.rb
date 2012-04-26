class AddColumnEscritorioIdCliente < ActiveRecord::Migration
  def up
    add_column :clientes, :escritorio_id, :integer
  end

  def down
    remove_column :clientes, :escritorio_id
  end
end
