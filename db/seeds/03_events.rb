@roi_cross_sulanmaan_ = 
  Event.create! name: "ROI Cross - Sulanmaan Valjakkourheilukisat",
    date_start: "2014-09-20",
    date_end: "2014-09-20",
    location: "Pöyliövaara",
    location_coordinates: "66.522132,25.790379",
    status: "closed"
@robur_sprint_ = 
  Event.create! name: "Robur sprint 2015",
    date_start: "2015-01-03",
    date_end: "2015-01-04",
    location: "Toivakka",
    location_coordinates: "66.522132,25.790379",
    status: "open"
@ruuhirod_ = 
  Event.create! name: "Ruuhirod 2015",
    date_start: "2015-02-07",
    date_end: "2015-02-08",
    location: "Seljesåsen, Alaveteli",
    location_coordinates: "66.522132,25.790379",
    status: "open"
@ohkolan_talvi = 
  Event.create! name: "Ohkolan talvi",
    date_start: "2015-02-14",
    date_end: "2015-02-15",
    location: "Ohkola",
    location_coordinates: "66.522132,25.790379",
    status: "open"
@eastpoint_open = 
  Event.create! name: "Eastpoint Open",
    date_start: "2015-02-13",
    date_end: "2015-02-15",
    location: "Nurmijärvi",
    location_coordinates: "66.522132,25.790379",
    status: "open"
@metsakartano_race_sm = 
  Event.create! name: "Metsäkartano Race, SM sprint, SM hiihto yhdistetty ja kahden koiran koirahiihto",
    date_start: "2014-02-15",
    date_end: "2014-02-16",
    location: "Rautavaara Metsäkartano",
    location_coordinates: "66.522132,25.790379",
    status: "closed"
@_ifss_european_champ = 
  Event.create! name: "2014 IFSS European Championships Finland",
    date_start: "2014-03-07",
    date_end: "2014-03-09",
    location: "Rautavaara",
    location_coordinates: "66.522132,25.790379",
    status: "closed"
@ruunaa_race = 
  Event.create! name: "Ruunaa Race",
    date_start: "2015-03-06",
    date_end: "2015-03-08",
    location: "Ruuna, Lieksa",
    location_coordinates: "66.522132,25.790379",
    status: "open"
@_taivalvaara_sled_do = 
  Event.create! name: "2015 Taivalvaara Sled Dog Race",
    date_start: "2015-03-07",
    date_end: "2015-03-08",
    location: "Taivalvaara, Taivalkoski",
    location_coordinates: "66.522132,25.790379",
    status: "open"
@shs_metsakartano_spr = 
  Event.create! name: "SHS Metsäkartano Sprint & MD",
    date_start: "2015-03-14",
    date_end: "2015-03-15",
    location: "Metsäkartano, Rautavaara",
    location_coordinates: "66.522132,25.790379",
    status: "open"
@kuusamo_sprinti = 
  Event.create! name: "Kuusamo Sprinti",
    date_start: "2015-03-28",
    date_end: "2015-03-28",
    location: "Ruka, Kuusamo",
    location_coordinates: "66.522132,25.790379",
    status: "open"
puts "Loaded #{Event.count} events."