json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :tipo_identificacion, :nro_identificacion, :tipo_cliente, :agencia_id
  json.url cliente_url(cliente, format: :json)
end
