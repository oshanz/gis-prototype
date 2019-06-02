class EducationFacility < ApplicationRecord
  def self.to_json(facilities)
    data = []
    facilities.each do |facility|
      data << {
        "geometry": JSON.parse(facility['st_asgeojson']).to_hash,
        "type": 'Feature',
        "properties": {
          "popupContent": facility['name']
        }
      }
    end
    data.to_json
  end
end
