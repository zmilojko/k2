class Entry
  include Mongoid::Document
  embedded_in :competition
  embeds_many :runs
  belongs_to :user
  field :number, type: String
  
  # Redundant data for a user
  field :user_name, type: String
end
