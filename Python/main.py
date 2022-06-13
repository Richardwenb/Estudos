from banco import Banco
from cliente import Cliente
from conta import Conta
banco = Banco()

cont = 1000

banco.cadastrar(Cliente("Nathan","5004564004","Vila lobos", "014669852365", Conta(cont, "corrente", 0)))

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
        saldo = input("Depósito inicial: ")
        
        banco.cadastrar(Cliente(nome, cpf, endereco, telefone, Conta(cont+1, tipo, saldo)))
        cont = cont + 1
        print("Cliente cadastrado com sucesso")

    elif opc == 2:
        nome = input("Digite o Nome que deseja consultar: ")
        if banco.consultar(nome) != None:
            cliente = banco.consultar(nome)
            print("Nome: ",cliente.getNome())
            print("CPF:",cliente.getCpf())
            print("Endereço:",cliente.getEndereco())
            print("Telefone:",cliente.getTelefone())
            print("Conta:",cliente.getConta().getNumero())
        else:
            print("Cliente inexistente")

    elif opc == 3:
        nome = input("Digite o Nome que deseja depositar: ")
        if banco.consultar(nome) != None:
            valor = input("Valor de depósito: ")
            banco.depositar(nome, valor)
        else:
            print("Cliente não encontrado")
    
    elif opc == 6:
        exit()

    print("")


