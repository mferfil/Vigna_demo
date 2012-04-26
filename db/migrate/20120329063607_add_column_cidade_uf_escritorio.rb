class AddColumnCidadeUfEscritorio < ActiveRecord::Migration
  def up
    add_column :escritorios, :cidade_uf, :string, :limit => 100
  end

  def down
    remove_column :cidade_uf
  end
end
