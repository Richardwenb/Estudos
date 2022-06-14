print(" ")
tma  = float(input("Digite o valor da TAXA MÍNIMA DE ATRATIVIDADE (TMA é a porcentagem por ano): "))
fc = float(input("Digite o valor do Fluxo de caixa: "))
ano = int(input("Digite o ano que esta calculando: "))

vpl = (fc) // (1+tma)**1

print(vpl)