json.array!(@navs) do |nav|
  json.extract! nav, :id, :title
  json.url nav_url(nav, format: :json)
end
