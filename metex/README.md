# Metex

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `metex` to your list of dependencies in `mix.exs`:

```shell
         cities |> Enum.each(fn city ->
...(11)>   pid = spawn(Metex.Worker, :loop, [])
...(11)>   send(pid, {self, city})
...(11)> end)
end
```
