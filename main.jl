using JuMP
import Ipopt

function example_rosenbrock()
    model = Model(Ipopt.Optimizer)
    # set_silent(model)
    @variable(model, x)
    @variable(model, y)
    @NLobjective(model, Min, (1 - x)^2 + 100 * (y - x^2)^2)
    optimize!(model)
    return
end

example_rosenbrock()