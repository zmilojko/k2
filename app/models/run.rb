class Run
  include Mongoid::Document
  embedded_in :entry
  field :race, type: String
  field :number, type: String
  field :verdict, type: String
  field :result_time, type: Integer
end
