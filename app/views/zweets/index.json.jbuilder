json.array!(@zweets) do |zweet|
  json.extract! zweet, :id, :status
  json.url zweet_url(zweet, format: :json)
end
