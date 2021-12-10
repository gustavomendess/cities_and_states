class City < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :state_id

  belongs_to :state

  scope :by_state_id, ->(state_id) { where(state_id: state_id) }
  scope :by_name, ->(name) { where("UNACCENT(name) ILIKE ?", "%#{I18n.transliterate(name)}%") }
  scope :by_state_and_name, ->(state_id, name) { where(state_id: state_id).where("name ILIKE ?", "%#{I18n.transliterate(name)}%") }
end
