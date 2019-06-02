class EducationFacility < ApplicationRecord
  def self.to_json(facilities)
    data = []
    p facilities.count
    facilities.each do |facility|
      data << {
        "geometry": JSON.parse(facility['st_asgeojson']).to_hash,
        "type": 'Feature',
        "properties": {
          "popupContent": facility['name']
        }
      }
    end
    p data.count
    data.to_json
  end
end
