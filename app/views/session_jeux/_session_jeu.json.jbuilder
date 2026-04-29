json.extract! session_jeu, :id, :instrument_id, :date_session, :heure_debut, :duree_minutes, :pieces_jouees, :notes_session, :ressenti_epoque, :epoque_id, :reflexion_personnelle, :created_at, :updated_at
json.url session_jeu_url(session_jeu, format: :json)
