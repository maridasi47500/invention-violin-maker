json.extract! instrument, :id, :brand, :model, :year, :serial_number, :description, :created_at, :updated_at
json.url instrument_url(instrument, format: :json)
