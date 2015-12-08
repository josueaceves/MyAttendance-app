json.array!(@choirs) do |choir|
  json.extract! choir, :id, :choir_name, :choir_location
  json.url choir_url(choir, format: :json)
end
