class Race
  include Mongoid::Document
  embedded_in :competition
  field :name, type: String
  field :status, type: String
  field :time, type: Time
  field :format, type: String

  Formats = ["time trial", "mass start"]
  Status = [:not_started, :ongoing, :finished, :closed, :cancelled]
end
