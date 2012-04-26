class CreateProjetosColaboradoresJoinTable < ActiveRecord::Migration
  def up
    create_table :projetos_colaboradores, :id => false do |t|
      t.integer :projeto_id
      t.integer :colaborador_id
    end
  end

  def down
    drop_table :projetos_colaboradores
  end
end
