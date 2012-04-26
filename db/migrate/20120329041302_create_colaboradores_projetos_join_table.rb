class CreateColaboradoresProjetosJoinTable < ActiveRecord::Migration
  def up
    create_table :colaboradores_projetos, :id => false do |t|
      t.integer :colaborador_id
      t.integer :projeto_id
    end
  end

  def down
    drop_table :colaboradores_projetos
  end
end
