json.array!(@events) do |event|
  json.extract! event, :id, :event_name, :date, :time, :comments, :created_by
  json.url event_url(event, format: :json)
end
