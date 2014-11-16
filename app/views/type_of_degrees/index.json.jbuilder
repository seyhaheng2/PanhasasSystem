json.array!(@type_of_degrees) do |type_of_degree|
  json.extract! type_of_degree, :id, :name
  json.url type_of_degree_url(type_of_degree, format: :json)
end
