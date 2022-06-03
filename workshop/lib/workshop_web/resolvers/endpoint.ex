defmodule WorkshopWeb.Router do
  use WorkshopWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/" do
    pipe_through(:api)

    forward("/graphiql", Absinthe.Plug.GraphiQL,
      # GraphQL Schema Module
      schema: WorkshopWeb.Schema,
      interface: :simple,
      context: %{pubsub: WorkshopWeb.Endpoint}
    )
  end
end
