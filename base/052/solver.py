n = int(input())
y = 0
while n > 0:
    y = y * 10 + n % 10
    n = int(n / 10)
print(y)