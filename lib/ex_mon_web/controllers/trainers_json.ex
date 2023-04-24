defmodule ExMonWeb.TrainersJSON do
  def create(%{trainer: trainer}) do
    %{
      status: "Created",
      id: trainer.id,
      name: trainer.name,
      inserted_at: trainer.inserted_at
    }
  end
end