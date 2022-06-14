class Banco():
    def __init__(self) -> None:
        self.clientes = []

    def cadastrar(self, c) -> None:
        self.clientes.append(c)

    def consultar(self, nome) -> object:
        for i in range(len(self.clientes)):
            if self.clientes[i].getNome() == nome:
                return self.clientes[i]
        return None

    def depositar(self, nome, valor) -> bool:
        for i in range(len(self.clientes)):
            if self.clientes[i].getNome() == nome:
                self.clientes[i].getConta().depositar(valor)
                return True
        return False

    def sacar(self, nome, valor) -> bool:
        for i in range(len(self.clientes)):
            if self.clientes[i].getNome() == nome:
                return self.clientes[i].getConta().sacar(valor)
        return False

    def transferir(self, nome, nome2, valor) -> bool:
        for i in range(len(self.clientes)):
            if self.clientes[i].getNome() == nome:
                for j in range(len(self.clientes)):
                    if self.clientes[j].getNome() == nome2:
                        return self.clientes[i].getConta().transferir(valor, self.clientes[j].getConta())
        return False