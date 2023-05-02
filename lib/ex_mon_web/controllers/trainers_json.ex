defmodule ExMonWeb.TrainersJSON do
  def create(%{trainer: trainer}) do
    %{
      status: "Created",
      trainer: %{
        id: trainer.id,
        name: trainer.name,
        inserted_at: trainer.inserted_at
      }
    }
  end

  def show(%{trainer: trainer}) do
    %{
      id: trainer.id,
      name: trainer.name,
      inserted_at: trainer.inserted_at
    }
  end
end
