#encoding: utf-8
class Cliente < ActiveRecord::Base
  validates_presence_of :nome
  validates_presence_of :cidade_uf
  validates_presence_of :pais
  validates_presence_of :contato
  validates_presence_of :telefone
  
  has_and_belongs_to_many :escritorios
  validates_presence_of :escritorio_id
  validates_associated :escritorio
  
  scope :recentes, where([ "created_at > ?, 3.months.ago"])
end
