input=readlines()
table=zeros(Int,20,20)
for i in 1:20
        global table[i,:] = parse.(Int,split(input[i]))
end
max = 0
#down
for i in 1:17
        for j in 1:20
                prod = table[i,j]*table[i+1,j]*table[i+2,j]*table[i+3,j]
                max < prod && global max = prod
        end
end
#right
for i in 1:20
        for j in 1:17
                prod = table[i,j]*table[i,j+1]*table[i,j+2]*table[i,j+3]
                max < prod && global max = prod
        end
end
#rightdown
for i in 1:17
        for j in 1:17
                prod = table[i,j]*table[i+1,j+1]*table[i+2,j+2]*table[i+3,j+3]
                max < prod && global max = prod
        end
end
#leftdown
for i in 1:17
        for j in 4:20
                prod = table[i,j]*table[i+1,j-1]*table[i+2,j-2]*table[i+3,j-3]
                max < prod && global max = prod
        end
end
print(max)
