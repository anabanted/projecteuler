function largest_prime_factor(N)
        if N<=1
                throw(DomainError(N,"Argument should bigger than or equals to 1."))
        end
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

function prime_numbers(N)
        prime=Int[]
        el=fill(true,N)
        el[1]=false
        for i in 1:N
                if el[i]==true
                        push!(prime,i)
                        j=2
                        while i*j<N
                                el[i*j]=false
                                j=j+1
                        end
                        #el[[i*j for j in 1:(N÷i)]].=false
                end
        end
#=
        now=zeros(N-1)
        for i in 1:length(now)
                now[i]=i+1
        end
        while length(now)>0
                push!(prime,now[1])
                next=now[now.%now[1] .!=0]
                now=next
        end
        =#
        return prime
end

sum=0
cnt=1
N=parse(Int,readline())
#p=zeros(Int,2N)
p=prime_numbers(N)
#=
for i in 2:2N
        if i==largest_prime_factor(i)
                global p[cnt]=i
                global cnt = cnt+1
        end
end
=#
j=1
#=
while p[j]<N
        global sum = sum+p[j]
        global j = j+1
end
=#
for i in 1:length(p)
        global sum=sum+p[i]
end
print(sum)
