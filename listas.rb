#classe Franquia
class Franquia

	def initialize
		@restaurantes = []
	end

	def adiciona(*restaurantes)
		for restaurante in restaurantes
			@restaurantes << restaurante
		end
	end

	#def mostra
		#for restaurante in @restaurantes
			#puts restaurante.nome
		#end
	#end

	#método franquia usando blocos
	def mostra
		@restaurantes.each do |r|
			puts r.nome
		end
	end

	def relatorio
		@restaurantes.each do |r|
			yield r
		end
	end

	def expandir(restaurante)
		def restaurante.cadastrar_vips
			puts "Restaurante #{self.nome} agora com área VIP!"
		end
	end
	#verifica se determinado restaurante foi cadastrado
	def method_missing(name, *args)
		@restaurantes.each do |r|
			return "O restaurante #{r.nome} já foi cadastrado!"
				if r.nome.eql? *args
			end
			return "O restaurante #{args[0]} não foi cadastrado ainda."
		end			
	end
end

#classe Restaurante
class Restaurante 
	attr_accessor :nome, :total

	def initialize(nome)
		puts "criando novo restaurante: #{nome}"
		@@total ||= 0
		@@total = @@total + 1
		puts "Restaurantes criados: #{@@total}"
		@nome = nome
	end
class << self
	def relatorio
		puts "foram criados #{@@total} restaurantes"
	end
end

	#usando hashe
	def fechar_conta(dados)
		puts "Conta fechada no valor de #{dados[:valor]} e com nota #{dados[:nota]}. Comentário: #{dados[:comentario]}"
	end
end

restaurante_um = Restaurante.new("Fasano")
#restaurante_um.nome = "Fasano"

restaurante_dois = Restaurante.new("Fogo de Chao")
#restaurante_dois.nome = "Fogo de Chao"

restaurante_tres = Restaurante.new("Paladar Potiguar")
#restaurante_tres.nome = "Paladar Potiguar"

franquia = Franquia.new
franquia.adiciona restaurante_um, restaurante_dois, restaurante_tres

restaurante_um.fechar_conta valor: 50, nota: 9, comentario: 'Gostei!'

franquia.mostra

Restaurante.relatorio

#chamada com blocos
	franquia.relatorio do |r|
		puts "Restaurante cadastrado: #{r.nome}"
	end

franquia.expandir restaurante_um
restaurante_um.cadastrar_vips

puts franquia.já_cadastrado?("Fasano")
puts franquia.já_cadastrado?("Boteco")