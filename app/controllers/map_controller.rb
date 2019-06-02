class MapController < ApplicationController
  def index
   sql = "SELECT ST_AsGeoJSON(geom),gid, objectid_1, objectid, createdate, createuser, building_i, 
       bldg_heigh, ground_ele, bldg_type, source, name, ftype, globalid, 
       shapestare, shapestlen, geom
  FROM public.education_facilities;"
    @records_array = ActiveRecord::Base.connection.execute(sql)
  end
end
