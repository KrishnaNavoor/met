class UserAreasController < ApplicationController
  # GET /user_areas
  # GET /user_areas.json
  def index
    @user_areas = UserArea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_areas }
    end
  end

  # GET /user_areas/1
  # GET /user_areas/1.json
  def show
    @user_area = UserArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_area }
    end
  end

  # GET /user_areas/new
  # GET /user_areas/new.json
  def new
    @user_area = UserArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_area }
    end
  end

  # GET /user_areas/1/edit
  def edit
    @user_area = UserArea.find(params[:id])
  end

  # POST /user_areas
  # POST /user_areas.json
  def create
    @user_area = UserArea.new(params[:user_area])

    respond_to do |format|
      if @user_area.save
        format.html { redirect_to @user_area, notice: 'User area was successfully created.' }
        format.json { render json: @user_area, status: :created, location: @user_area }
      else
        format.html { render action: "new" }
        format.json { render json: @user_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_areas/1
  # PUT /user_areas/1.json
  def update
    @user_area = UserArea.find(params[:id])

    respond_to do |format|
      if @user_area.update_attributes(params[:user_area])
        format.html { redirect_to @user_area, notice: 'User area was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_areas/1
  # DELETE /user_areas/1.json
  def destroy
    @user_area = UserArea.find(params[:id])
    @user_area.destroy

    respond_to do |format|
      format.html { redirect_to user_areas_url }
      format.json { head :no_content }
    end
  end
end
