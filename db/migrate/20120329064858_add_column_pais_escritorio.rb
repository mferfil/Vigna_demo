class AddColumnPaisEscritorio < ActiveRecord::Migration
  def up
    add_column :escritorios, :pais, :string, :limit => 50
  end

  def down
    remove_column :pais
  end
end
