defmodule ExMonWeb.TrainersController do
  use ExMonWeb, :controller

  action_fallback ExMonWeb.FallbackController

  def create(conn, params) do
    params
    |> ExMon.create_trainer() # Call facade
    |> handle_response(conn)
  end

  defp handle_response({:ok, trainer}, conn) do
    conn
    |> put_status(:ok) # Writing ok is the same as writing 200(search for Phoenix:http status)
    |> render(:create, trainer: trainer)
  end

  defp handle_response({:error, _changeset} = error, _conn), do: error
end
