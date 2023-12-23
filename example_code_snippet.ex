

{:ok, integer} = {:ok, 13}
{:ok, 13}

# won't match due to different size
{:ok, integer} = {:ok, 11, 13}
# ** (MatchError) no match of right hand side value: {:ok, 11, 13}

# won't match due to mismatch on first element
{:ok, binary} = {:error, :enoent}
#** (MatchError) no match of right hand side value: {:error, :enoent}



those_who_are_assembled = [
   %{age: "30ish", gender: "Female", name: "Izzy"},
   %{gender: "Male", name: "The Author", age: "30ish"},
   %{name: "The Reader", gender: "Unknowable", age: "Unknowable"},
 ]


hgbyub

[first_person = %{name: first_name} | others] = those_who_are_assembled


iex> first_person
%{age: "30ish", gender: "Female", name: "Izzy"}
iex> first_name
"Izzy"


iex> x = 1
1
iex> 1 = x
1
iex> 2 = x
** (MatchError) no match of right hand side value: 1

iex> road = fn
  "high" -> "You take the high road!"
  "low" -> "I'll take the low road! (and I'll get there before you)"
end

iex> road.("high")
"You take the high road!"
