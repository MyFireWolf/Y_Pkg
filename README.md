# Y_Pkg
 
(@v1.9) pkg> add https://github.com/MyFireWolf/Y_Pkg.git

julia> using Pkg
julia> generate(t,"package_demo")
; julia> Pkg.generate("package_demo")

julia> Pkg.develop(path="C:/Users/52282/package_demo")    不需要git信息，安装前安装后位置不变 C:/Users/52282/package_demo
julia> Pkg.add(path="C:/Users/52282/package_demo")     需要git信息，安装后位置./julia/packages/package_demo  "C:\Users\52282\.julia\packages\package_demo"


