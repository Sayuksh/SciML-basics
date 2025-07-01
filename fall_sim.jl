using DifferentialEquations, Plots

# Your falling model
function falling!(du, u, p, t)
    x, v = u
    g, k, m = p
    du[1] = v
    du[2] = -g - (k/m) * v
end

u0 = [100.0, 0.0]   # x=100m, v=0
tspan = (0.0, 5.0)
p = (9.8, 0.5, 1.0)

prob = ODEProblem(falling!, u0, tspan, p)
sol = solve(prob, saveat=0.05)  # Save at intervals for animation

# Animation!
anim = @animate for i in 1:length(sol.t)
    y = sol[i][1]  # vertical position
    scatter([0], [y], 
        ylim=(0, 110), 
        xlim=(-1, 1), 
        legend=false,
        xlabel="",
        ylabel="Height (m)",
        title="Ball Falling Over Time",
        markersize=10,
        markercolor=:red)
end

# Save or display animation
gif(anim, "falling_ball.gif", fps=60)
