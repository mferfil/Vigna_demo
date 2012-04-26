class CreateEscritoriosColaboradoresJoinTable < ActiveRecord::Migration
  def up
    create_table :escritorios_colaboradores, :id => false do |t|
      t.integer :escritorio_id
      t.integer :colaborador_id
    end
  end

  def down
    drop_table :escritorios_colaboradores
  end
end
