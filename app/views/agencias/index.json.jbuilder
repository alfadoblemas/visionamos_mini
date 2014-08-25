json.array!(@agencias) do |agencia|
  json.extract! agencia, :id, :nombre, :direccion, :nit, :telefono, :estado, :nombre_director
  json.url agencia_url(agencia, format: :json)
end
