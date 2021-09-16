for a in 1:500
        e=false
        for b in a:1000-a
                if a^2 + b^2 == (1000-a-b)^2
                        print(a*b*(1000-a-b))
                        e=true
                        break
                end
        end
        e==true && break
end

