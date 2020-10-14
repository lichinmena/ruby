myArray = [3.1416, "pie", 99]
puts("Clase  :: #{myArray.class}")
puts("Tamaño :: #{myArray.length}")
puts("Pos 1  :: #{myArray[0]}")
puts("Pos 2  :: #{myArray[1]}")
puts("Pos 3  :: #{myArray[2]}")
puts("Pos 4  :: #{myArray[3]}")
puts("Pos 5  :: #{myArray[4]}")

puts("====>====>====>====>")

ab = Array.new #Inicializacion del array forma uno
ab[0] = "Second"
ab[1] = "array"
puts(ab)

puts("====>====>====>====>")

cd = []  #Inicializacion del array forma dos
cd[0] = "Second"
cd[1] = "array"
puts(cd)

puts("====>====>====>====>")

ef = []  
ef[0] = "1"
ef[1] = "2"
ef[2] = "3"
ef[3] = "4"
ef[4] = "5"
ef[5] = "6"
ef[6] = "7"
ef[7] = "8"
ef[8] = "9"
ef[9] = "10"
puts("Ultima      pos #{ef[-1]}")
puts("Penultima   pos #{ef[-2]}")
puts("Antepultima pos #{ef[-3]}")
puts("No existe   pos #{ef[-99]}")

puts("SubArray uno ***")
puts(ef[0,3]) #Obtener de la pocision 0 a la 2 (1,2,3) [Empieza, numero posiciones a avanzar]

puts("SubArray dos ***")
puts(ef[4,2]) #Obtener de la pocision 4 a la 5 (5,6) [Empieza, numero posiciones a avanzar]


puts("Rango uno ***")
puts(ef[0..3]) #Obtener 1 2 3 4 [start, end]

puts("Rango dos ***")
puts(ef[2..4]) #Obtener 3 4 5 [start, end]


puts("====>====>====>====> Agregando elementos")
stack = []
stack.push ("red")
stack.push ("green")
stack.push ("blue")
stack.push ("black")
puts("==> Mostrar stack :: #{stack}")

"""
Para eliminar un elemento puedes usar pop, pop tiene algoritmo FIFO(El primero en entrar, es el primero en salir)
"""
stack.pop
puts("==> Primer pop :: #{stack}")
stack.pop
puts("==> Segundo pop :: #{stack}")
stack.pop
puts("==> tercer pop :: #{stack}")
stack.pop
puts("==> cuarto pop :: #{stack}")


=begin
Comentario de bloque
=end

#Algunas veces, crear arrays de palabras puede ser tedioso debido a tantas comillas y comas. Afortunadamente, Ruby tiene una forma más cómoda para hacerlo:
nombres1 = [ 'ann', 'richard', 'william', 'susan', 'pat' ]  
puts("#{nombres1}")
nombres2 = %w{ ann richard william susan pat }
puts("#{nombres2}")  

#Recorrer un array
ciudades = %w{ Mexico EUA Nigeria Japon  }
ciudades.each do |ciudad|
    puts '¡Me gusta ' + ciudad + '!'
end

#eliminar un elemento
ciudades.delete_at(0)
puts("#{ciudades}")

#eliminar elementos que coicidan
ciudades.delete("Nigeria")
puts("#{ciudades}")


#Recorrer un array Otra forma
for x in ciudades do
    puts x
end

#Recorrer un array Otra forma con su index
ciudades.each_with_index do |city, index|
    puts "The index is #{index}"
    puts "The value is #{city}"
end


otroArray = Array.new
otroArray.push("1")
otroArray.push("1")
otroArray.push("1")
otroArray.push("2")
otroArray.push("2")
otroArray.push("3")
otroArray.push("3")
otroArray.push("3")
otroArray.push("3")
otroArray.push("3")
otroArray.push("3")
otroArray.push("3")
otroArray.push("4")
otroArray.push("5")
puts("#{otroArray}")
#Returns the element at index int
puts("at(0) #{otroArray.at(0)}")
puts("at(-1) #{otroArray.at(-1)}")

#Validar si esta vacio
puts("#{otroArray.empty?}")
arrayVacio = []
puts("#{arrayVacio.empty?}")

#Retorna el index del primer que sea igual
puts("Get index #{otroArray.find_index("4")}")

#Reverse
puts("Reverse #{otroArray.reverse}")


#Recorrer en reversa
otroArray.reverse_each {|x| print x, " " }

puts("")
#sort
puts("sort #{otroArray.sort}")