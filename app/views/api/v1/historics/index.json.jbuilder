json.historics do
  json.array! @historics, :id, :certificate_id, :created_at, :updated_at
end