defmodule ExMon.Trainer.Get do
  alias ExMon.{Trainer,Repo}
  alias Ecto.UUID

  def call(id) do
    case UUID.cast(id) do
      :error -> {:error, "Invalid ID format !"}
      {:ok, uuid} -> get_trainer(uuid)
    end
  end

  defp get_trainer(uuid) do
    case Repo.get(Trainer, uuid) do
      nil -> {:error, "Trainer not found !"}
      trainer -> {:ok, trainer}
    end
  end
end
