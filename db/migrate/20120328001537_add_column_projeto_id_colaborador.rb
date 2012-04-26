class AddColumnProjetoIdColaborador < ActiveRecord::Migration
  def up
    add_column :colaboradores, :projeto_id, :integer
  end

  def down
    remove_column :colaboradores, :projeto_id
  end
end
