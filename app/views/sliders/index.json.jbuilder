json.array!(@sliders) do |slider|
  json.extract! slider, :id, :name, :title1, :title2
  json.url slider_url(slider, format: :json)
end
