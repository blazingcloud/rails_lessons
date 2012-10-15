class HumansController < ApplicationController
  # GET /humans
  # GET /humans.json
  def index
    @humans = Human.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @humans }
    end
  end

  # GET /humans/1
  # GET /humans/1.json
  def show
    @human = Human.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @human }
    end
  end

  # GET /humans/new
  # GET /humans/new.json
  def new
    @human = Human.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @human }
    end
  end

  # GET /humans/1/edit
  def edit
    @human = Human.find(params[:id])
  end

  # POST /humans
  # POST /humans.json
  def create
    @human = Human.new(params[:human])

    respond_to do |format|
      if @human.save
        format.html { redirect_to @human, notice: 'Human was successfully created.' }
        format.json { render json: @human, status: :created, location: @human }
      else
        format.html { render action: "new" }
        format.json { render json: @human.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /humans/1
  # PUT /humans/1.json
  def update
    @human = Human.find(params[:id])

    respond_to do |format|
      if @human.update_attributes(params[:human])
        format.html { redirect_to @human, notice: 'Human was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @human.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /humans/1
  # DELETE /humans/1.json
  def destroy
    @human = Human.find(params[:id])
    @human.destroy

    respond_to do |format|
      format.html { redirect_to humans_url }
      format.json { head :no_content }
    end
  end
end
