using Primes
function number_of_divisors(N)
        ans=prod(values(factor(Dict,N)).+1)
        return ans
end
ans=0
tri_num=0
cnt=0
while true
    global tri_num = tri_num+cnt
    n=number_of_divisors(tri_num)
    print(n,"\n")
    if n>500
            break
    end
    global cnt = cnt+1
end
print(tri_num)

