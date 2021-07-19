json.extract! sessao, :id, :data, :hora, :user_id, :paciente_id, :psicologo_id, :created_at, :updated_at
json.url sessao_url(sessao, format: :json)
