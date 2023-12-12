defmodule Cat do
  defstruct age: age, appetite: appetite, weight: weight

  def feed(cat) do
    if cat.age >= 10 do
      case cat.weight do
        "lean" ->
          case cat.appetite do
            "strong" -> "30oz wet food"
            "moderate" -> "25oz wet food"
            "low" -> "20oz wet food"
          end

        "normal" ->
          case cat.appetite do
            "strong" -> "25oz wet food"
            "moderate" -> "20oz wet food"
            "low" -> "15oz wet food"
          end

        "overweight" ->
          case cat.appetite do
            "strong" -> "28oz wet food"
            "moderate" -> "18oz wet food"
            "low" -> "10oz wet food"
          end
      end
    else
      case cat.weight do
        "lean" ->
          case cat.appetite do
            "strong" -> "30oz dry food"
            "moderate" -> "25oz dry food"
            "low" -> "20oz dry food"
          end

        "normal" ->
          case cat.appetite do
            "strong" -> "25oz wet food"
            "moderate" -> "20oz wet food"
            "low" -> "15oz wet food"
          end

        "overweight" ->
          case cat.appetite do
            "strong" -> "20oz wet food"
            "moderate" -> "15oz wet food"
            "low" -> "10oz wet food"
          end
      end
    end
  end
end
