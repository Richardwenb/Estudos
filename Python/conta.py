class Conta():
    def __init__(self, numero, tipo, saldo) -> None:
        self.numero = numero
        self.tipo = tipo
        self.saldo = saldo

    def depositar(self, valor) -> float:
        self.saldo = self.saldo + valor

    def sacar(self, valor) -> bool:
        if valor <= self.saldo:
            self.saldo = self.saldo - valor
            return True
        return False

    def getNumero(self) -> int:
        return self.numero

    def getSaldo(self) -> float:
        return self.saldo
    
    def getTipo(self) -> str:
        return self.tipo

    def transferir(self, valor, destino) -> bool:
        if valor <= self.saldo:
            self.saldo = self.saldo - valor
            destino.depositar(valor)
            return True
        return False
