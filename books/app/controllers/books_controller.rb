class BooksController < ApplicationController
  def new
    @book = Book.new(:person_id => params[:person_id])
  end

  def create
    @book = Book.new(params[:book])

    respond_to do |format|
      if @book.save
        flash[:notice] = 'Book was added!'
        format.html { redirect_to(people_url) }
      else
        format.html { render :action => "new" }
      end
    end
  end

end
