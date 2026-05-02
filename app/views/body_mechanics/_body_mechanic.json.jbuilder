json.extract! body_mechanic, :id, :elbow_angle_degrees, :elbow_state, :wrist_angle_state, :wrist_extension_degrees, :index_phalange_state, :thumb_position, :shoulder_position, :violin_angle_degrees, :back_posture, :chin_pressure, :bow_parallelism_check, :bow_deviation_notes, :created_at, :updated_at
json.url body_mechanic_url(body_mechanic, format: :json)
