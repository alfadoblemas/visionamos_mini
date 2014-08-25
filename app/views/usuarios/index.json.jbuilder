json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido, :tipo_identificacion, :nro_identificacion, :email, :tipo_usuario, :agencia_id
  json.url usuario_url(usuario, format: :json)
end
