require_relative 'caesar_cipher'

user_option = 's'

while user_option != 'n'
  puts '===== CAESAR CIPHER - Text encryption ====='
  puts
  puts 'Escreva o texto que deseja criptografar:'
  strings = gets.chomp
  puts
  puts 'Digite o valor secreto:'
  valor = gets.chomp.to_i
  puts
  puts 'Seu texto codificado:'
  caesar_cipher(strings, valor)
  puts
  puts 'Deseja converter outro texto? (s ou n)'
  user_option = gets.chomp
end

puts "==== END OF ENCRYPTION ===="