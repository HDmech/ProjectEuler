function fib(n)
    f = zeros(BigInt, n)
    f[1:2] = [1,2]
	for i in 3:n
        f[i] = f[i-2] + f[i-1]
        if f[i]<0
            println("neg")
            break
        end
    end
    return f
end

function evenFib(n)
    f = zeros(BigInt, Int(floor(n/3)))
    f[1:2] = [0,2]
    for i in 3:3+Int(floor(n/3))
        f[i] = f[i-2] + 4*f[i-1]
        if f[i]<0
            println("neg")
            break
        end
    end
    return f
end



n=Int(4e3)
evenFib(n)[n-300]