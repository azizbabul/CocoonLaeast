json.array!(@cotacts) do |cotact|
  json.extract! cotact, :id, :name, :email, :phone, :message
  json.url cotact_url(cotact, format: :json)
end
