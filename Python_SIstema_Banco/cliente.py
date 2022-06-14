class Cliente():
    def __init__(self, nome, cpf, endereco, telefone, conta) -> None:
        self.nome = nome
        self.cpf = cpf
        self.endereco = endereco
        self.telefone = telefone
        self.conta = conta

    def getNome(self) -> str:
        return self.nome
    
    def getCpf(self) -> str:
        return self.cpf
    
    def getEndereco(self) -> str:
        return self.endereco

    def getTelefone(self) -> str:
        return self.telefone

    def getConta(self) -> object:
        return self.conta




