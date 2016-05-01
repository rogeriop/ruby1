puts "Bem vindo ao jogo de adivinhação"
puts "Qual é o seu nome"
nome = gets
puts "\n" + "\n" + "\n"

puts "Começaremos o jogo para você, " + nome

puts "Escolhendo um número secreto para você entre 0 e 200 "
numero_secreto = 175

puts "\n" + "\n" + "\n"

puts "Tentativa um"
puts "Entre com o numero"
chute = gets
puts "Serah que acertou? Voce chutou " + chute
puts chute.to_i == numero_secreto






