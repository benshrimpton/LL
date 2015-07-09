json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :id, :title
  json.url portfolio_url(portfolio, format: :json)
end
