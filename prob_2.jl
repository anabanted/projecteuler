fib1 = 1
fib2 = 2
sum = 0
while fib2<=4000000
        global fib1, fib2, sum
        if fib2%2==0
                sum = sum + fib2
        end
        (fib1,fib2) = (fib2,fib1+fib2)
end
print(sum)
