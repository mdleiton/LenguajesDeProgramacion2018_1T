
class Persona
	def initialize(nombre,altura,masa) 
		@nombre = nombre 		 
		@altura = altura		# en metros
		@masa = masa			# en kilogramos
	end

	# Publico: calcula el indice de masa corporal.
	# retorna el valor del indice de masa corporal
	def IMC()
		return @masa / (@altura * @altura) 
	end
	
	# Public: clasifica el valor de indice masa corporal .
	# retorna la categoria a la que pertenece segun su indice de masa corporal
	def clasificarIMC(imc)
		if imc < 15 
			puts  "Peso extremadamente bajp"
		elsif imc < 16 
			puts "Peso severamente bajo"
		elsif imc < 18.5 
			puts "Peso bajo"
		elsif imc < 25 
			puts "Normal"
		elsif imc < 30 
			puts "Sobrepeso"
		elsif imc < 35 
			puts "Obesidad clase I"
		elsif imc < 40 
			puts "Obesidad clase II"
		elsif imc < 45 
			puts "Obesidad clase III"
		elsif imc < 50 
			puts "Obesidad clase IV"
		elsif imc < 60 
			puts "Obesidad clase V"
		else 
			puts "Obesidad clase VI"
		end	
	end
	attr_accessor:nombre
	attr_accessor:masa
	attr_accessor:altura
	
end

#prueba  altura en metros y peso en kilogramos
persona = Persona.new("Mauricio", 1.60,60)
imc = persona.IMC
puts "Su inidice de masa corporal es de : "+ imc.to_s
print "Por lo tanto tiene un(a) : "
persona.clasificarIMC(imc)