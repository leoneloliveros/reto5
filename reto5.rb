=begin
1. Instrucciones de juego
2. Buscar y mostrar una pregunta del archivo de extensión .txt
3. Solicitar una respuesta al usuario
	3.1 Si la respuesta es incorrecta, imprime intenta de nuevo
	3.1 Si la respuesta es correcta, imprime felicidades e inicia desde el punto 2.
=end
questions_arr = IO.readlines("questions.txt")

num = 4 # Corresponde al numero de preguntas que hay guardas en el archivo question.txt

puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
while !questions_arr.length.eql?(0)
	answer = true
	num_question = 3 * ( rand(1..num) - 1 )
	puts "Definición"
	puts questions_arr[num_question]
	while answer 		
		print "Adivinar: "
		answer = gets.downcase.capitalize.gsub(" ", "")
		if answer == questions_arr[num_question + 1]
			puts "Correcto!"
			3.times do 
				questions_arr.delete_at(num_question)
			end
			num -= 1
			answer = false
		else
			puts "Incorrecto! Intenta de nuevo"
		end
	end
end
puts "Has ganado el juego!! Felicidades!"