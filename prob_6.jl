sum_sq=0
sum=0
N=parse(Int,readline())
for i in 1:N
        global sum_sq=sum_sq+i^2
        global sum   = sum  +i
end
print(sum^2-sum_sq)
