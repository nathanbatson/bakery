json.array!(@cakes) do |cake|
  json.extract! cake, :id, :name, :eggs, :flour, :sugar, :oil, :comments
  json.url cake_url(cake, format: :json)
end
