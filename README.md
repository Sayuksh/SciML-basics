# Falling Ball Simulation

This Julia project simulates a ball falling under the influence of gravity and air resistance, creating an animated visualization of the physics.

## Physics Model

The simulation uses differential equations to model a ball falling with:
- Gravitational force
- Air resistance (drag) proportional to velocity

The equations of motion are:
- dx/dt = v
- dv/dt = -g - (k/m)v

Where:
- x: height of the ball (m)
- v: velocity (m/s)
- g: gravitational acceleration (9.8 m/s²)
- k: drag coefficient (0.5 in this simulation)
- m: mass (1.0 kg in this simulation)

## Configuration

The simulation uses these default values:
- Starting height: 100 meters
- Initial velocity: 0 m/s
- Simulation duration: 5 seconds
- Animation frame rate: 60 fps

## How to Run

### Prerequisites
Make sure you have Julia installed with the required packages:

```bash
# Start Julia in the project directory
julia

# In Julia REPL, activate the project environment
] activate .

# Install required packages if needed
] add DifferentialEquations Plots
```

### Running the Simulation
There are two ways to run the simulation:

1. **From Julia REPL:**
```julia
# Start Julia in the project directory
julia

# Activate the project environment
] activate .

# Run the simulation script
include("fall_sim.jl")
```

2. **From Command Line:**
```bash
# Navigate to the project directory
cd path/to/MyFirstSimulation

# Run Julia with the script
julia -e 'using Pkg; Pkg.activate("."); include("fall_sim.jl")'
```

## Output

The script generates a GIF animation file named "falling_ball.gif" showing a red ball falling from 100m with realistic physics, accounting for both gravity and air resistance.

## Modifying Parameters

You can modify these parameters in the script to change the simulation:

- `u0 = [100.0, 0.0]` - Initial conditions [height, velocity]
- `tspan = (0.0, 5.0)` - Simulation time range in seconds
- `p = (9.8, 0.5, 1.0)` - Physics parameters (gravity, drag coefficient, mass)
- `fps=60` - Animation frame rate
