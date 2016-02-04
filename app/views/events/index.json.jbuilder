json.array!(@events) do |event|
  json.extract! event, :id, :date, :event, :start, :end, :icon, :location, :description
  json.url event_url(event, format: :json)
end
