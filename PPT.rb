words = ['piedra', 'papel', 'tijeras']
maquina = words[rand(3)] #La maquina elije aleatoria mente
i = 5
eleccion = 'hola'

puts "Introduce tu Nombre"
nombre = STDIN.gets

while (i.to_i >= 3)
  puts "Elija piedra, papel o tijeras"
  puts "1. Piedra"
  puts "2. Papel"
  puts "3. Tijeras"
  i = STDIN.gets
  a = i.to_i
  a = a - 1
  eleccion = words[a]
end
puts " "

puts "Maquina: " + maquina
puts "Usuario: " + eleccion
case maquina
	 when 'piedra' #si la maquina escoge piedra
		case eleccion
		  when 'piedra' #si el usuario escoge piedra
			 puts "Empate"
		  when 'papel' #si la maquina escoge papel
			 puts "Ganas tu " + nombre
		  when 'tijeras' #si la maquina escoge tijeras
			 puts "Gano Yo"
		end
	 when 'papel' #si la maquina escoge papel
		case eleccion
		  when 'piedra' #si la maquina escoge piedra
			 puts "Gano Yo"
		  when 'papel' #si la maquina escoge papel
			 puts "Empate"
		  when 'tijeras'#si la maquina escoge tijeras
			 puts "Ganas tu " + nombre
		end
	 when 'tijeras' #si la maquina escoge tijeras
		case eleccion
		  when 'piedra' #si la maquina escoge piedra
			 puts "Ganas tu " + nombre
		  when 'papel' #si la maquina escoge papel
			 puts "Gano Yo"
		  when 'tijeras' #si la maquina escoge tijeras
			 puts "Empate"
		end
end
