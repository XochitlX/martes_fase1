# Regresa true si encuentra un numero de cuenta.
def numero_de_cuenta(number)
  if number.match /\d{4}\-\d{3}-\d{3}/
    true
  end
end
p numero_de_cuenta("1234-123-123") == true


# Regresa un número de cuenta si existe dentro del string y nil en el caso contrario.
def retorno_numero_de_cuenta(sentence)
  if sentence.match /\d{4}\-\d{3}-\d{3}/
    "#{sentence.match /\d{4}\-\d{3}-\d{3}/}"
  end
end
p retorno_numero_de_cuenta("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") == "1234-123-123"


# Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
def numeros_multiples_cuentas(sentence)
  cuentas = []
  expression = /\d{4}\-\d{3}-\d{3}/
  sentence.split(",").each { |item| cuentas << "#{item.match expression}" }
  cuentas.reject { |i|  i == "" } 
end
p numeros_multiples_cuentas("cuenta 1: 1234-567-897, cuenta 2: 4321-567-897") == ["1234-567-897", "4321-567-897"]


# Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros siete numeros. ej. "XXXX-XXX-234"
def cuenta_reemplazo(sentence)
  cuentas = []
  cuentas2 = []
  expression = /\d{4}\-\d{3}-\d{3}/
  sentence.split(",").each { |item| cuentas << "#{item.match expression}" }
  cuentas.each { |item| cuentas2 << "#{item.gsub(/\d{4}\-\d{3}/, 'XXXX-XXX')}" }
  cuentas2.reject { |i|  i == "" }    
end
p cuenta_reemplazo("cuenta 1: 1234-567-897, cuenta 2: ") == ["XXXX-XXX-897"]




# Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones lo regresa a su formato 
# original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo.
def formato(cuenta)
  cuenta.gsub!(/[.]/, '')  
  if cuenta.length == 10
    msn = "#{cuenta[0..3]}-#{cuenta[4..6]}-#{cuenta[7..9]}"
  elsif cuenta.length == 10
    msn = "#{cuenta[0..3]}-#{cuenta[4..6]}-#{cuenta[7..9]}"
  else
    msn = "Invalid"
  end
  msn
end

p formato("1234567890") == "1234-567-890"
p formato("1234.567.899") == "1234-567-899"
p formato("234-567-8") == "Invalid"
