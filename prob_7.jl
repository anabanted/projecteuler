function largest_prime_factor(N)
        now = N
        largestPrimeFactor = 1
        while true
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
        return largestPrimeFactor
end
N=parse(Int,readline())
cnt_n=2
cnt_p=0
ans=1
while cnt_p<N
        if cnt_n==largest_prime_factor(cnt_n)
                global cnt_p=cnt_p+1
                global ans=cnt_n
        end
        global cnt_n=cnt_n+1
end
print(ans)
