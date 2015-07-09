json.array!(@settings) do |setting|
  json.extract! setting, :id, :title
  json.url setting_url(setting, format: :json)
end
