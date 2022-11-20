x = 5

#通过 表达式参数ex 修改x值为1   @s x
macro s(ex)
    quote
        $(esc(ex)) = 1
    end    
end

# 直接修改 x 值为 -1   @s1 0
macro s1(ex)
    esc(:(x=-1))
end

#=
macro sy(ex)
    quote
        $(esc(ex)) =
            return :($(esc(ex)))
    end
end

x = 5

function f()
    x = 2
    @show @s x
    println("f.x = $x")
end

f()
println(x)

@show @macroexpand @s(3)
=#