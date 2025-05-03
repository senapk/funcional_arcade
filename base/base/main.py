import sys

def converte(number, base):
    text = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    output = ""
    while number != 0:
        resto = number % base
        number = int(number / base)
        output = text[resto] + output
    return output

if len(sys.argv) < 3:
    print("Use programa numero base")
    exit(1)

print(converte(int(sys.argv[1]), int(sys.argv[2])))