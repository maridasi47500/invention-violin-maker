class EnhanceFirePointsTable < ActiveRecord::Migration[8.0]
  def change
    # Contexte avant/pendant/après friction
    add_column :experiences, :pre_friction_setup, :text
    add_column :experiences, :hand_modifications_during, :text
    add_column :experiences, :post_friction_action, :string
    
    # Validation d'époque multi-partition
    add_column :fire_points, :valid_epochs, :jsonb  # ["baroque", "classique"]
    add_column :fire_points, :invalid_epochs, :jsonb  # ["romantique"]
    add_column :fire_points, :cross_piece_validation, :jsonb
    
    # Reconnaissance vs Technique
    add_column :experiences, :reader_can_sightread, :boolean
    add_column :experiences, :reader_recognizes_epoch, :boolean
    add_column :experiences, :authenticity_gap, :text  # "Pourquoi j'ai mal reconnu"
    
    # Erreurs détectées
    add_column :fire_points, :was_false_positive, :boolean, default: false
    add_column :fire_points, :false_positive_reason, :text
  end
end
