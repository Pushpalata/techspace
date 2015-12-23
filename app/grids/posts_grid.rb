class PostsGrid

  include Datagrid

  scope do
    Post
  end

  filter(:id, :integer)
  filter(:title, :string) { |value| where("title like '%#{value}%'") }
  filter(:created_at, :date, :range => true)
  filter(:condition, :dynamic, :header => "Dynamic condition")

  column(:id)
  column(:title)
  column(:created_at) do |model|
    model.created_at.to_date
  end
end
