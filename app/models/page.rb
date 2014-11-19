class Page
  include Mongoid::Document
  embedded_in :event
  field :name, type: String
  field :content, type: String
end
