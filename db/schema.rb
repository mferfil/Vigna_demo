# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120329064858) do

  create_table "clientes", :force => true do |t|
    t.string   "nome",          :limit => 80
    t.string   "endereco"
    t.string   "cidade_uf"
    t.string   "pais",          :limit => 80
    t.string   "contato",       :limit => 80
    t.string   "telefone"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "escritorio_id"
  end

  create_table "clientes_escritorios", :id => false, :force => true do |t|
    t.integer "cliente_id"
    t.integer "escritorio_id"
  end

  create_table "colaboradores", :force => true do |t|
    t.string   "nome",          :limit => 20
    t.string   "sobrenome",     :limit => 40
    t.integer  "escritorio_id"
    t.string   "cargo",         :limit => 30
    t.string   "vinculo",       :limit => 30
    t.date     "aniversario"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "projeto_id"
  end

  create_table "colaboradores_projetos", :id => false, :force => true do |t|
    t.integer "colaborador_id"
    t.integer "projeto_id"
  end

  create_table "colaboradors", :force => true do |t|
    t.string   "nome",        :limit => 20
    t.string   "sobrenome",   :limit => 40
    t.string   "cargo",       :limit => 30
    t.string   "status",      :limit => 30
    t.date     "aniversario"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "escritorios", :force => true do |t|
    t.string   "nome",        :limit => 80
    t.string   "endereco",    :limit => 160
    t.string   "telefone",    :limit => 80
    t.string   "responsavel", :limit => 80
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "cidade_uf",   :limit => 100
    t.string   "pais",        :limit => 50
  end

  create_table "escritorios_colaboradores", :id => false, :force => true do |t|
    t.integer "escritorio_id"
    t.integer "colaborador_id"
  end

  create_table "projetos", :force => true do |t|
    t.string   "titulo"
    t.integer  "cliente_id"
    t.integer  "colaborador_id"
    t.date     "data_inicio"
    t.date     "data_termino"
    t.string   "status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "projetos_clientes", :id => false, :force => true do |t|
    t.integer "projeto_id"
    t.integer "cliente_id"
  end

  create_table "projetos_colaboradores", :id => false, :force => true do |t|
    t.integer "projeto_id"
    t.integer "colaborador_id"
  end

  create_table "proposta", :force => true do |t|
    t.string   "nome"
    t.integer  "cliente_id"
    t.date     "data"
    t.string   "contato"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "propostas_clientes", :id => false, :force => true do |t|
    t.integer "proposta_id"
  end

end
