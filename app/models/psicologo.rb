class Psicologo < ApplicationRecord

  validates :crp, presence: true,length: {in:7..20}
  validates :nome, presence: true, length: {in:3..35}
  
  belongs_to :user
  has_many :pacientes
  has_many :sessaos
end
