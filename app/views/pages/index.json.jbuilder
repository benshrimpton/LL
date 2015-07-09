json.array!(@pages) do |page|
  json.extract! page, :id, :facebook_name, :instagram_name, :twitter_name, :google_analytics
  json.url page_url(page, format: :json)
end
