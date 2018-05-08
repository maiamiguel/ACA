

matrix = [
    [1,1,0,1,0,1,0,1],
    [0,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,0],
    [0,0,1,0,1,0,0,1],
    [0,1,0,1,0,0,1,0],
    [1,0,1,0,0,1,0,0],
    [1,0,0,1,1,1,0,1],
    [1,1,1,0,1,1,1,1],
    [0,0,0,0,1,0,1,1],
    [0,0,0,1,0,1,1,0],
    [0,0,1,0,1,1,0,0],
    [0,1,0,1,1,0,0,0],
    [1,0,1,1,0,0,0,0],
    [1,0,1,1,0,1,0,1],
    [1,0,1,1,1,1,1,1],
    [1,0,1,0,1,0,1,1]
]

matrix = list(zip(*matrix))


i = 0
j = 0

ones = []

while i < 8:
    x = []
    j = 0
    while j < len(matrix[i]):
        if matrix[i][j] == 1: x.append(j+8);
        j += 1
    ones.append(x)
    i += 1

doubles = []

for i in range(8,24):
    for j in range(i+1,24):
        count = 0
        z = 7
        outs = []
        for x in ones:
            if i in x and j in x:
                count += 1
                outs.append(z)
            z -= 1


        if count == 6: doubles.append([[i, j], outs,count])

print(str(ones)+"\n")
print(doubles)