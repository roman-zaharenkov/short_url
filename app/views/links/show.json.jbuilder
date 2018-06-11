json.(@link, :id, :target_url, :token, :created_at)
json.total_clicks @total_clicks

json.clicks @clicks do |click|
  json.(click, :id, :ip, :referer, :user_agent, :created_at)
end
