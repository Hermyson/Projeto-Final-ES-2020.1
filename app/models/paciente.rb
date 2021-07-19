class Paciente < ApplicationRecord
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :nome, presence:true, length: {in:3..35}
  validates :cpf, presence:true, length: {in:11..15}
  validates :endereco, presence: true, length: {in:6..35}
  validates :telefone, presence: true, length: {in:11..15}
  validates :email, presence: true,length: {in:10..35},format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
  validates :estado_civil, presence:true, length: {in:6..10}
  validates :e_fumante,presence: true
  validates :ingere_alcool, presence: true
  
  belongs_to :psicologo
  belongs_to :user
  has_many :sessaos, dependent: :destroy
end
