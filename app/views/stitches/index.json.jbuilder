json.array!(@stitches) do |stitch|
  json.extract! stitch, :thread_color, :length
  json.url stitch_url(stitch, format: :json)
end
