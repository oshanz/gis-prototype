class Api::V1::FacilitiesController < ApplicationController
  def index
    render json: EducationFacility.to_json
  end
end
