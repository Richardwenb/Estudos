print("Exemplo de Pay-back simples:\nPara ficar mais claro, peguemos um exemplo bem simples: Você investiu em uma tecnologia de 30 mil reais que irá trazer um\nretorno mensal de 2 mil reais. Então, o cálculo fica da seguinte forma:\npayback simples = 30.000 ÷ 2.000\npayback simples = 15 meses")
print(" ")
investimento_inicio = float(input("Digite o valor do investimento inicial :"))
ganhos_periodo = float(input("Digite os ganhos do período (Ou fluxo de caixa médio): "))

paybackS = investimento_inicio // ganhos_periodo

print("Pay-back simples é igual",paybackS, "meses")