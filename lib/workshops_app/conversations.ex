defmodule WorkshopsApp.Conversations do
  import Ecto.Query, warn: false
  alias WorkshopsApp.Repo

  alias WorkshopsApp.Conversations.Message

  def create_message(attrs \\ %{}) do
    %Message{}
    |> Message.changeset(attrs)
    |> Repo.insert()
  end

  def list_messages do
    Repo.all(Message)
  end
end
