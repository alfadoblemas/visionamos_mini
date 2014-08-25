class objectDecorator < Decoratorr::Base
  def nombre_completo
    "#{object.primer_nombre} #{object.segundo_nombre} #{object.primer_apellido} #{object.segundo_nombre}"
  end

  def tipo_identificacion_options
    [ ['Cedula', 1],
      ['NIT', 2],
      ['Pasaporte', 3],
      ['Nit', 3]
    ]
  end
  
  def tipo_identificacion_label(id)
    tipo_identificacion_options.each { |arr| return arr[1] == id }
  end
end