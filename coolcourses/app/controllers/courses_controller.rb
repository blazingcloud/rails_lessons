class CoursesController < ApplicationController


  def index
    @courses = CourseDecorator.decorate_collection(Course.all)

    respond_to do |format|
      format.html
      format.json {render json: @courses}
    end  
  end

  def show
    @course = Course.find(params[:id]).decorate
  end

end
