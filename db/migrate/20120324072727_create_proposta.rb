class CreateProposta < ActiveRecord::Migration
  def change
    create_table :proposta do |t|
      t.string :nome
      t.integer :cliente_id
      t.date :data
      t.string :contato
      t.string :status
      t.timestamps
    end
  end
end
