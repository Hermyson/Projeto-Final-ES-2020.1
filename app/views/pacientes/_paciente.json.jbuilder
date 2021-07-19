json.extract! paciente, :id, :nome, :cpf, :telefone, :email, :endereco, :estado_civil, :quantidade_filhos, :medicamentos, :e_fumante, :ingere_alcool, :psicologo_id, :user_id, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
