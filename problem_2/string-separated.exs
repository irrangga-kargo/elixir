list = IO.gets("list: ")
list = list |> String.replace("\n", "") |> String.split(" ", trim: true)

result = Enum.reduce(list, %{
  # all: [],
  number: [],
  non_number: [],
  odd_number: [],
  even_number: []
}, fn value, acc ->
  case Integer.parse(value) do
    {int_value, ""} when rem(int_value, 2) == 1 ->
      Map.merge(acc, %{
        number: acc.number ++ [value],
        odd_number: acc.odd_number ++ [value]
      })
    {int_value, ""} when rem(int_value, 2) == 0 ->
      Map.merge(acc, %{
        number: acc.number ++ [value],
        even_number: acc.even_number ++ [value]
      })

    _ ->
      Map.put(acc, :non_number, acc.non_number ++ [value])
  end
end
)

IO.inspect(result)

search = IO.gets("search: ")
search = search |> String.replace("\n", "")

search = Enum.find_index(list, fn value ->
  value == search
end
)

IO.inspect(search)
