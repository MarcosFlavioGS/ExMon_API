# ExMon

This is the ExMon API. This is a simple API to create Pokemon trainers

# How to use

To use this API you need to have Elixir and Phoenix installed in your machine. You can find the instructions to install Elixir [here](https://elixir-lang.org/install.html) and Phoenix [here](https://hexdocs.pm/phoenix/installation.html).

After you have installed Elixir and Phoenix, you need to clone this repository and install the dependencies with `mix deps.get`.

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser or use a tool like [Postman](https://www.postman.com/) to make requests to the API.

# API Documentation

The API have simple CRUD operations for trainers:

 To create a new traainer you need to make a POST request to `/api/trainers` with a name and a password in the body of the request. The password must have at least 6 characters.

```
{
  "name": "Trainer Name",
  "password": "password"
}
```

 To view an existing trainer you need to make a GET request to `/api/trainers/:id` with the id of the trainer you want to see.

 To delete a trainer you need to make a DELETE request to `/api/trainers/:id` with the id of the trainer you want to delete.

 To update a trainer you need to make a PUT request to `/api/trainers/:id` with the id of the trainer you want to update and the new name and password in the body of the request.
```
{
  "name": "New Name",
  "password": "newpassword"
}
```

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
