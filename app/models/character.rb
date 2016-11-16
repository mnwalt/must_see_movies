class Character < ApplicationRecord
  # Direct associations

  belongs_to :movies,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :actor_id, :presence => true

  validates :movies_id, :presence => true

end
