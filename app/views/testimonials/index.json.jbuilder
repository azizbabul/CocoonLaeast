json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :description, :name, :particulars
  json.url testimonial_url(testimonial, format: :json)
end
