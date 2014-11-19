class Event
  include Mongoid::Document
  field :name, type: String
  field :date_start, type: Date
  field :date_end, type: Date
  field :location, type: String
  field :location_coordinates, type: String
  field :status, type: String
  embeds_many :pages
end
