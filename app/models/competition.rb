class Competition
  include Mongoid::Document
  embedded_in :event
  field :name, type: String
  field :description, type: String
  field :date_start, type: Date
  field :date_end, type: Date
  field :status, type: String
  field :format, type: String
  embeds_many :races
  embeds_many :entries
  
  Formats = ["two races combined", "single race"]
  Status = [:not_published, :open, :ready,
            :ongoing, :finished, :closed, :cancelled]
end
