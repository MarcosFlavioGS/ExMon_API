defmodule ExMonWeb.TrainersController do
  use ExMonWeb, :controller

  def create(conn, params) do
    params
    |> ExMon.create_trainer() # Call facade
    |> handle_response(conn)
  end

  def delete(conn, %{"id" => id}) do
    id
    |> ExMon.delete_trainer()
    |> handle_delete(conn)
  end

  # Create
  defp handle_response({:ok, trainer}, conn) do
    conn
    |> put_status(:ok) # Writing ok is the same as writing 200(search for Phoenix:http status)
    |> render(:create, trainer: trainer)
  end

  defp handle_response({:error, _changeset} = error, _conn), do: error

  #Delete
  defp handle_delete({:ok, _trainer}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{"Trainer": "Deleted !"})
  end

  defp handle_delete({:error, _trainer} = error, _conn), do: error
end
