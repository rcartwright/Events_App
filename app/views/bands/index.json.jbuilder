json.array!(@bands) do |band|
  json.extract! band, :id, :band_name, :members, :date
  json.url band_url(band, format: :json)
end
