def odd_indexed(arr)
  r  = []
  arr.each_with_index {|e,i| r << e if (i % 2) == 0}
  r
end

def long_strings(arr)
  arr.find_all {|e| e if e.length > 4}
end

def start_with_h(arr)
  arr.find {|s| s if s[0] == 'h'}
end

def capitalize_array(arr)
  arr.map {|s| s.capitalize}
end

def group_by_starting_letter(arr)
  arr.group_by {|s| s.chr}
end

def number_of_r(str)
  str.scan(/r/).length
end

# Pruebas
p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
p number_of_r("ferrocarril") == 4