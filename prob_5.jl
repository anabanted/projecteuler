N=parse(Int,readline())
prime_factor=zeros(Int,8)
prime_numbers=[2,3,5,7,11,13,17,19]
for i in 1:N
        for j in 1:8
                n=i
                cnt=0
                while n%prime_numbers[j]==0
                        n = n÷prime_numbers[j]
                        cnt = cnt+1
                end
                prime_factor[j]<cnt && global prime_factor[j]=cnt
        end
end
print(prime_factor,"\n")
ans=1
for i in 1:8
        global ans = ans*prime_numbers[i]^prime_factor[i]
end
print(ans)
