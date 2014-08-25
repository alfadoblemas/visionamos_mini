class UsuarioDecorator < Decorator::Base
  def nombre_completo
    "#{object.nombre} #{object.apellido}"
  end

  def tipo_identificacion_options
    [ ['Cedula', 1],
      ['Nit', 2]
    ]
  end
  
  def tipo_identificacion_label
    tipo_identificacion_options.each do |arr|
      if arr[1] == object.tipo_identificacion 
        return arr[0]
      end
    end
  end
end