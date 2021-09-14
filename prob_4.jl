function main()
        N=3
        list = zeros(Int,10^2N)
        for i in 1:10^N
                for j in 1:10^N
                        list[(i-1)*10^N+j]=i*j
                end
        end
        list = reverse(sort(list))
        for i in list
                if string(i) == reverse(string(i))
                        print(i)
                        break
                end
        end
end
main()
