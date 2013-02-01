class SectionsController < ApplicationController
  def index
    @sections = Course.find(params[:course_id]).sections
    respond_to do |format|
      format.json {render json: @sections}
    end
  end
end