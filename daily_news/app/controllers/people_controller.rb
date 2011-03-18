class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def create
    @person = Person.new(params[:person])
    if @person.save
      redirect_to person_path(@person)
    else
      render :action => "new"
    end
  end
  
  def new
    @person = Person.new
  end
  
  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.last_name = params[:person][:last_name]
    if @person.save
      redirect_to person_path(@person)
    else
      render :action => "edit"
    end
  end

  def destroy
    person = Person.find(params[:id])
    person.delete
    redirect_to people_path
  end

end
