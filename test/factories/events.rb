FactoryGirl.define do
  factory :event do
    name "Some past event"
    date_start "2014-10-19"
    date_end "2014-10-19"
    location "Oulu, Finland"
    location_coordinates "65.0688039,25.9474793"
  end
end
