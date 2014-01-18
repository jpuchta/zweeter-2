json.array!(@zweets) do |zweet|
  json.extract! zweet, :id, :status, :zombie_id
  json.url zweet_url(zweet, format: :json)
end
