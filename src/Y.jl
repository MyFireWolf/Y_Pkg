module Y
#= 
using Base64   
         需要使用Base64模块，则编辑 当前包文件夹的Project.toml文件：
         添加如下内容
                [deps] 
                Base64 = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"
=#

using GLFW
export
    showwindows

function showwindows()
    # Create a window and its OpenGL context
    window = GLFW.CreateWindow(640, 480, "GLFW.jl")

    # Make the window's context current
    GLFW.MakeContextCurrent(window)

    # Loop until the user closes the window
    while !GLFW.WindowShouldClose(window)

        # Render here

        # Swap front and back buffers
        GLFW.SwapBuffers(window)

        # Poll for and process events
        GLFW.PollEvents()
    end

    GLFW.DestroyWindow(window)
end

function t()
    println("Y.t")
end

end # module Y