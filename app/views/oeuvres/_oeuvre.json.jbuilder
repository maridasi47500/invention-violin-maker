json.extract! oeuvre, :id, :titre, :annee, :compositeur_id, :style_musical_id, :created_at, :updated_at
json.url oeuvre_url(oeuvre, format: :json)
