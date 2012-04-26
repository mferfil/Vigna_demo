#encoding: utf-8
class Escritorio < ActiveRecord::Base
  validates_presence_of :nome, :message => "Favor preencher o campo Nome"
  validates_presence_of :endereco, :message => "Favor preencher o campo Endereco"
  validates_presence_of :telefone, :message => "Favor preencher o campo Telefone"
  validates_uniqueness_of :nome, :message => "Nome ja cadastrado"
  has_many :clientes
  has_many :colaboradores
  validates_presence_of :cliente_id
end
