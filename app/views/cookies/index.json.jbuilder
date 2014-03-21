json.array!(@cookies) do |cooky|
  json.extract! cooky, :id, :name, :eggs, :flour, :sugar, :oil, :comments
  json.url cooky_url(cooky, format: :json)
end
