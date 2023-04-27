defmodule ExMon.Trainer.Delete do
  alias ExMon.{Trainer,Repo}
  alias Ecto.UUID

  def call(id) do
    case UUID.cast(id) do
      :error -> {:error, "Invalid ID format !"}
      {:ok, uuid} -> deleting(uuid)
    end
  end

  defp deleting(uuid) do
    case fetch_trainer(uuid) do
      nil -> {:error, "Trainer not found !"}
      trainer -> Repo.delete(trainer)
    end
  end

  defp fetch_trainer(uuid), do: Repo.get(Trainer, uuid)
end
