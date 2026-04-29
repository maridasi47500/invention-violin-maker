json.extract! enregistrement_musical, :id, :oeuvre_id, :violoniste_id, :date_enregistrement, :format_media, :label_editeur, :url_streaming, :lutherie_violon_id, :lutherie_archet_id, :notes_lutherie, :source_achat, :date_achat_ou_decouverte, :epoque_compositeur_id, :epoque_enregistrement_id, :created_at, :updated_at
json.url enregistrement_musical_url(enregistrement_musical, format: :json)
