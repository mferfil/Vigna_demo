#encoding: utf-8
class Proposta < ActiveRecord::Base
  validates_presence_of :nome
  validates_presence_of :data
  belongs_to :cliente
  validates_presence_of :cliente_id
  validates_associated :cliente
end
