# Elixir playground

Here I play around with Elixir and OTP to solidify knowledge I gained from this excellent course https://pragmaticstudio.com/courses/elixir  

## Basics

### Create Elixir project:

```elixir
mix new something
```

### Run the Elixir file:

```elixir
elixir dir/something.ex
```

```elixir
iex dir/something.ex
```
### Run the Elixir file in iex session:

```elixir
iex
iex> c "dir/something.ex"
```

When you start a standard iex session, it doesn't know about the paths and dependencies of a mix project. So to start a session in the context of a project, you need to pass the -S mix option:

```elixir
iex -S mix
```

### Recompile a modulein iex:

```elixir
iex> r Something
```
