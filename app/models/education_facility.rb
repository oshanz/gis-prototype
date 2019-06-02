class EducationFacility #< ApplicationRecord
  def self.to_json
    data = []
    all.each do |facility|
      data << {
        "geometry": JSON.parse(facility['st_asgeojson']).to_hash,
        "type": 'Feature',
        "properties": {
          "name": facility['name'],
          "gid": facility['gid']
        }
      }
    end
    data.to_json
  end

  def self.all
    sql = "SELECT ST_AsGeoJSON(geom),gid, name FROM public.education_facilities;"
     ActiveRecord::Base.connection.execute(sql)
  end
end
