resultado = 0
fazerConta = true
pegarResult = false

while fazerConta == true
    if pegarResult == false
        print "Digite o numero: "
        num = gets.chomp.to_f
        print "Digite o 2° numero: "
        num2 = gets.chomp.to_f
    else
        num = resultado
        print "Digite o 2° numero: "
        num2 = gets.chomp.to_f
    end

    print "Digite a operação (+, -, *, /): "
    operacao = gets.chomp
    case operacao
        when "+"
            resultado = num + num2
        when "-"
            resultado = num - num2
        when "*"
            resultado = num * num2
        when "/"
            resultado = num / num2
        else
            puts "Operação invalida tente denovo."
            next
    end
    print "Deseja continuar? (s/n): "
    continuar = gets.chomp.downcase
    if continuar == "s"
        print "Deseja pegar o resultado? (s/n): "
        pegarResult = gets.chomp.downcase
        if pegarResult == "s"
            pegarResult = true
        else
            pegarResult = false
        end
    else
        fazerConta = false
    end
end

puts "Resultado: #{resultado}"