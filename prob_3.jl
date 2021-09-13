print("Type the number\n")
input = parse(Int,readline())
now = input
largestPrimeFactor = 1
while true
        global now, largestPrimeFactor
        if largestPrimeFactor == 1
                i=2
        else
                i=largestPrimeFactor
        end
        while true
                if now%i==0
                        now = now÷i
                        largestPrimeFactor = i
                        i = i+1
                        break
                end
                i = i+1
        end
        if now < largestPrimeFactor
                break
        end
end
print(largestPrimeFactor)
