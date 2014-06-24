json.array!(@offers) do |offer|
  json.extract! offer, :id, :name, :min_participants, :start_at, :end_at, :quota
  json.url offer_url(offer, format: :json)
end
