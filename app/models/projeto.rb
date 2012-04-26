#encoding: utf-8
class Projeto < ActiveRecord::Base
  belongs_to :cliente
# Colaborador = responsável/gerente do projeto
  belongs_to :colaborador
  validates_presence_of :cliente_id, :colaborador_id
  validates_associated :cliente, :colaborador
end
