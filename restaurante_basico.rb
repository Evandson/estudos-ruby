#atribuindo dados a uma variável usando gets e imprimindo com puts.
puts "Digite o nome do Restaurante:"
nome = gets
puts nome

#adicionando dados a uma variável e imprimindo a mesma concatenada.
mensagem = "Bom dia, "
mensagem << "Tudo Bem!"
puts mensagem

#usando interpolação, deixando letra em caixa alta(capitalize)
print "Nome do Restaurante: #{nome.capitalize}"

#testando tipos
puts :simbolo
puts 3.class
puts 33333333333333333.class

#operações básicas
puts 3*(2+5)/8

#operador ou/igual
nome = nil
nome ||="anonimo"
puts nome

#estruturas de controle: if
nota = 7
if nota > 7
	puts "Boa nota!"
else
	puts "Nota ruim!"
end

#estruturas de controle: for
for i in 1..3
	puts x = i
end

#operador de expressões regulares
puts /rio/ =~ "são paulo"
puts /paulo/ =~ "são paulo"
