class HobbyOriginsController < ApplicationController
  def show
    @person = Person.find(params[:person_id])
    @origin = @person.hobby_origins.find_by_hobby_id(params[:id])
  end
end
