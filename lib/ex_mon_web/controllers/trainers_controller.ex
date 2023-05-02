defmodule ExMonWeb.TrainersController do
  use ExMonWeb, :controller

  def create(conn, params) do
    params
    |> ExMon.create_trainer() # Call facade
    |> handle_response(conn, :create, :ok)
  end

  def delete(conn, %{"id" => id}) do
    id
    |> ExMon.delete_trainer()
    |> handle_delete(conn)
  end

  def show(conn, %{"id" => id}) do
    id
    |> ExMon.get_trainer()
    |> handle_response(conn, :show, :ok)
  end
  # Create/show
  defp handle_response({:ok, trainer}, conn, view, status) do
    conn
    |> put_status(status) # Writing ok is the same as writing 200(search for Phoenix:http status)
    |> render(view, trainer: trainer)
  end

  defp handle_response({:error, _changeset} = error, _conn, _view, _status), do: error

  #Delete
  defp handle_delete({:ok, _trainer}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{"Trainer": "Deleted !"})
  end

  defp handle_delete({:error, _trainer} = error, _conn), do: error
end
