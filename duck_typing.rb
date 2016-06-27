#aplicando conceitos de herança
class Franquia
	def info
		puts "Restaurante faz parte da franquia"
	end
end

class Restaurante < Franquia
	#fazendo sobrescrita do método
	def info
		super
		puts "Restaurante Fasano"
	end
end

def informa(franquia)
	franquia.info
end

restaurante = Restaurante.new
#restaurante.info
informa restaurante