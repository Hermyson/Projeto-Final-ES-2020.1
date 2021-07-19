class Sessao < ApplicationRecord
  validates :data, presence: true
  validates :hora, presence: true
    
  belongs_to :user
  belongs_to :paciente
  belongs_to :psicologo
end
