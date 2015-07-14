json.array!(@bolgs) do |bolg|
  json.extract! bolg, :id
  json.url bolg_url(bolg, format: :json)
end
