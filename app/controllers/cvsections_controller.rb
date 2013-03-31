class CvsectionsController < ApplicationController
  # GET /cvsections
  # GET /cvsections.json
  def index
    @cvsections = Cvsection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cvsections }
    end
  end

  # GET /cvsections/1
  # GET /cvsections/1.json
  def show
    @cvsection = Cvsection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cvsection }
    end
  end

  # GET /cvsections/new
  # GET /cvsections/new.json
  def new
    @cvsection = Cvsection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cvsection }
    end
  end

  # GET /cvsections/1/edit
  def edit
    @cvsection = Cvsection.find(params[:id])
  end

  # POST /cvsections
  # POST /cvsections.json
  def create
    @cvsection = Cvsection.new(params[:cvsection])

    respond_to do |format|
      if @cvsection.save
        format.html { redirect_to @cvsection, notice: 'Cvsection was successfully created.' }
        format.json { render json: @cvsection, status: :created, location: @cvsection }
      else
        format.html { render action: "new" }
        format.json { render json: @cvsection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cvsections/1
  # PUT /cvsections/1.json
  def update
    @cvsection = Cvsection.find(params[:id])

    respond_to do |format|
      if @cvsection.update_attributes(params[:cvsection])
        format.html { redirect_to @cvsection, notice: 'Cvsection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cvsection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cvsections/1
  # DELETE /cvsections/1.json
  def destroy
    @cvsection = Cvsection.find(params[:id])
    @cvsection.destroy

    respond_to do |format|
      format.html { redirect_to cvsections_url }
      format.json { head :no_content }
    end
  end
end
