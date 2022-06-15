from banco import Banco
from cliente import Cliente
from conta import Conta
banco = Banco()

cont = 1000

#banco.cadastrar(Cliente("Nathan","5004564004","Vila lobos", "014669852365", Conta(cont, "corrente", 200)))
#banco.cadastrar(Cliente("Richard","5004564004","Vila lobos", "014669852365", Conta(cont+1, "corrente", 100)))

while True:
    print("MENU:\n1 – Cadastrar cliente/conta\n2 – Consultar\n3 – Depositar\n4 - Sacar\n5 – Transferir\n6 - Finalizar")
    while True:
        try:
            opc = int(input("Digite a opção que deseja: "))
            break
        except ValueError:
            print("Entrada inválida, tente novamente\n")

    if opc == 1:
        nome = input("Digite o Nome: ")
        cpf = input("Digite o CPF: ")
        endereco = input("Digite o endereço: ")
        telefone = input("Digite o telefone: ")
        tipo = input("\n1 - Corrente\n2 - Poupança\nTipo de conta: ")
        while True:
            try:
                saldo = float(input("Depósito inicial: "))
                break
            except ValueError:
                print("Valor inválido, use ponto em vez de vírgula\n")
        banco.cadastrar(Cliente(nome, cpf, endereco, telefone, Conta(cont+1, tipo, saldo)))
        cont = cont + 1
        print("Cliente cadastrado com sucesso")

    elif opc == 2:
        nome = input("Digite o Nome que deseja consultar: ")
        if banco.consultar(nome) != None:
            cliente = banco.consultar(nome)
            print("\nNome: ",cliente.getNome())
            print("CPF:",cliente.getCpf())
            print("Endereço:",cliente.getEndereco())
            print("Telefone:",cliente.getTelefone())
            print("Conta:",cliente.getConta().getNumero())
            print("Saldo: R$%0.2f" %cliente.getConta().getSaldo())
        else:
            print("Cliente inexistente")

    elif opc == 3:
        nome = input("Digite o Nome que deseja depositar: ")
        if banco.consultar(nome) != None:
            valor = float(input("Valor de depósito: "))
            banco.depositar(nome, valor)
        else:
            print("Cliente não encontrado")

    elif opc == 4:
        nome = input("Digite o Nome que deseja Sacar: ")
        if banco.consultar(nome) != None:
            valor = float(input("Digite o valor que deseja sacar: "))
            if banco.sacar(nome, valor):
                print("Saque efetuado com sucesso")
            else:
                print("Saldo insuficiente")
        else:
            print("Cliente não encontrado")

    elif opc == 5:
        nome = input("Digite o Nome de quem irá transferir: ")
        if banco.consultar(nome) != None:
            nome2 = input("Digite o nome do cliente quem irá Receber: ")
            valor = float(input("Digite o valor que deseja transferir: "))
            if banco.transferir(nome, nome2, valor):
                print("Transferência efetuada com sucesso")
            else:
                print("Saldo insuficiente")
        else:
            print("Cliente não encontrado")
            
    elif opc == 6:
        print("Muito obrigado por utilizar nossos serviços")
        exit()
    
    print("")
    print("")