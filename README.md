# Odin's Ruby Course Project

This project is a small Ruby library developed for Odin's Ruby course, focusing on array manipulations and algorithms.

## Features

- **Fibonacci Sequence**:
  - Compute the nth Fibonacci number.
  - Generate a list of Fibonacci numbers up to a given count.

- **Merge Sort Implementation**:
  - Efficiently sort arrays using the merge sort algorithm.

## Files

- `lib/array.rb`: Extends Ruby's Array class with Fibonacci and merge sort methods.
- `Gemfile`, `Gemfile.lock`: Manage Ruby dependencies.
- `spec/`: Contains tests for the Fibonacci sequence and merge sort functionalities.
- `gemset.nix`, `flake.nix`, `flake.lock`: Nix scaffolding for environment reproducibility, ensuring all dependencies and tools are consistent across setups.

## Nix Scaffolding

This project uses Nix for environment management, providing a reproducible and isolated development environment. The `flake.nix` and related files define the environment configuration, making it easy to set up on any machine with Nix installed.

## Usage

To run the project, set up the nix environment:

```bash
nix develop
```

Then you can run the Ruby scripts or tests as needed.

## Notes

- The project demonstrates handling of array data structures, recursion, and sorting algorithms.
- Ideal for those learning algorithm implementation in Ruby and exploring environment management with Nix.

---

Feel free to customize this README further with more detailed instructions or additional features!