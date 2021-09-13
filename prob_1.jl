multiplesOfThree   = Int[]
multiplesOfFive    = Int[]
multiplesOfFifteen = Int[]

print("The sum of all the multiples of 3 or 5 below ___.\n")
N=parse(Int,readline())
for i in 1:N-1
        if i%3==0
                push!(multiplesOfThree,i)
        end
        if i%5==0
                push!(multiplesOfFive,i)
        end
        if i%15==0
                push!(multiplesOfFifteen,i)
        end
end
ans = sum(multiplesOfThree)+sum(multiplesOfFive)-sum(multiplesOfFifteen)
print(ans)
