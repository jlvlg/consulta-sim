json.extract! paciente, :id, :nome, :cpf, :email, :nascimento, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
