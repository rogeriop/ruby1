def da_boas_vindas
	puts "Bem vindo ao jogo de adivinhacao"
	puts "Qual eh o seu nome"
	nome = gets.strip
	puts "\n\n\n"
	puts "Comecaremos o jogo para voce, #{nome}"
end

def sorteia_numero_secreto
	puts "Escolhendo um numero secreto para voce entre 0 e 200 "
	sorteio = 175
	puts "Escolhido! Que tal tentar adivinha-lo?"
	sorteio
end

def pede_um_numero (chutes, tentativa, limite_de_tentativas)
	puts "\n\n"
	puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
	puts "Numeros chutados ateh entao #{chutes}"
	puts "Entre com o numero"
	chute = gets.strip
	puts "Serah que acertou? Voce chutou #{chute}"
	puts "\n\n\n"
	chute.to_i
end

def verifica_se_acertou(chute, numero_secreto)
	acertou = chute == numero_secreto
	if acertou
		puts "Voce Acertou!"
		return true
	end
	
	maior = numero_secreto > chute
	if maior
		puts "O numero secreto eh maior"
	else
		puts "O numero secreto eh menor"
	end	
	false
end


da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas
	chute = pede_um_numero chutes, tentativa, limite_de_tentativas
	chutes << chute
	if verifica_se_acertou chute, numero_secreto
		break
	end
end
