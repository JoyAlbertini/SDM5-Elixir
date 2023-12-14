defmodule Cat do
  defstruct age: nil, weight: nil, appetite: nil

  def feed(%Cat{age: age, weight: weight, appetite: appetite}) do
    # Implementation of feed function
  end


  defp amount_of_food(%Cat{weight: weight, appetite: appetite}) do
    case {weight, appetite} do
      {"lean", "strong"} -> "300oz"
      {"lean", "moderate"} -> "250oz"
      {"lean", "low"} -> "200oz"
      {"normal", "strong"} -> "250oz"
      {"normal", "moderate"} -> "200oz"
      {"normal", "low"} -> "150oz"
      {"overweight", "strong"} -> "200oz"
      {"overweight", "moderate"} -> "150oz"
      {"overweight", "low"} -> "100oz"
    end
  end

  def feed(%Cat{age: age, weight: weight, appetite: appetite}) do
    food_type = type_of_food(%Cat{age: age})
    food_amount = amount_of_food(%Cat{weight: weight, appetite: appetite})

    "#{food_amount} of #{food_type}"
  end


  defp type_of_food(%Cat{age: age}) do
    cond do
      age >= 10 -> "wet food"
      true -> "dry food"
    end
  end
end
