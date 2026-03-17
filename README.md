# 1D Drug Diffusion Simulation (MATLAB)

## 📌 Overview

This project simulates **one-dimensional drug diffusion** using an explicit finite difference method in MATLAB. It models how a drug concentration evolves over time and space, including the effect of decay.

The simulation is useful for understanding diffusion processes in simplified systems such as tissue layers or controlled drug delivery.

---

## ⚙️ Features

* Finite difference solution to the 1D diffusion equation
* Includes a **decay term** to model drug degradation
* Customizable parameters:

  * Diffusion coefficient (`D`)
  * Domain length (`L`)
  * Total simulation time (`T`)
  * Number of spatial points (`Nx`)
  * Number of time steps (`Nt`)
  * Decay rate (`decay`)
* Built-in **stability check** for numerical accuracy
* Simple boundary conditions:

  * Constant concentration at one end
  * No-flux condition at the other end

---

## 🧠 Model Description

The simulation is based on the diffusion equation with decay:

∂C/∂t = D ∂²C/∂x² − decay · C

Where:

* `C` = concentration
* `D` = diffusion coefficient
* `decay` = degradation rate

---

## 🚀 How to Use

1. Open MATLAB
2. Save the function as:

   ```
   drugDiffusion1D.m
   ```
3. Run in the command window:

   ```matlab
   C = drugDiffusion1D(D, L, T, Nx, Nt, decay);
   ```

### Example:

```matlab
C = drugDiffusion1D(0.1, 1, 10, 50, 1000, 0.01);
```

---

## 📊 Output

* `C` is a matrix of size `(Nx × Nt)`
* Each column represents concentration over space at a given time step

---

## ⚠️ Stability Condition

The simulation enforces:

```
dt ≤ dx² / (2D)
```

If violated, the program will stop to prevent inaccurate results.

---
