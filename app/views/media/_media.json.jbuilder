json.extract! media, :id, :url, :type_media, :exemple_musical_id, :created_at, :updated_at
json.url media_url(media, format: :json)
