json.array!(@needles) do |needle|
  json.extract! needle, :sharpness, :length
  json.url needle_url(needle, format: :json)
end
