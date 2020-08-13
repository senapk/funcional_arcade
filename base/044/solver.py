n = int(input())
cont = 0
while n > 0:
    cont += n % 10
    n = int(n / 10)
print(cont)