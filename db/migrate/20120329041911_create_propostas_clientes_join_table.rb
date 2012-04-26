class CreatePropostasClientesJoinTable < ActiveRecord::Migration
  def up
    create_table :propostas_clientes, :id => false do |t|
      t.integer :proposta_id
      t.integer :proposta_id
    end
  end

  def down
    drop_table :propostas_clientes
  end
end
