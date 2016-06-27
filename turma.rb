class Turma
	def initialize(*turmas)
		@turmas = turmas
	end

	def mostra
		@turmas.each do |t|
			yield t
		end
	end
end

fj91 = Turma.new("Guilherme", "Paulo", "Sérgio")
fj21 = Turma.new("Evandson", "Rose", "Regilene")

fj91.mostra do |nome|
	puts nome
end