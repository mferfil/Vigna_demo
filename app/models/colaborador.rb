#encoding: utf-8
class Colaborador < ActiveRecord::Base
  validates_presence_of :nome
  validates_presence_of :sobrenome 
  validates_presence_of :escritorio_id
  validates_presence_of :vinculo
  has_and_belongs_to_many :projetos
  has_and_belongs_to_many :escritorios
  validates_presence_of :projeto_id, :escritorio_id
  validates_associated :projeto, :escritorio
end
