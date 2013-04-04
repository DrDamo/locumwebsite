class SectionHeadingsController < ApplicationController
  # GET /section_headings
  # GET /section_headings.json
  def index
    @section_headings = SectionHeading.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @section_headings }
    end
  end

  # GET /section_headings/1
  # GET /section_headings/1.json
  def show
    @section_heading = SectionHeading.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section_heading }
    end
  end

  # GET /section_headings/new
  # GET /section_headings/new.json
  def new
    @section_heading = SectionHeading.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @section_heading }
    end
  end

  # GET /section_headings/1/edit
  def edit
    @section_heading = SectionHeading.find(params[:id])
  end

  # POST /section_headings
  # POST /section_headings.json
  def create
    @section_heading = SectionHeading.new(params[:section_heading])

    respond_to do |format|
      if @section_heading.save
        format.html { redirect_to @section_heading, notice: 'Section heading was successfully created.' }
        format.json { render json: @section_heading, status: :created, location: @section_heading }
      else
        format.html { render action: "new" }
        format.json { render json: @section_heading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /section_headings/1
  # PUT /section_headings/1.json
  def update
    @section_heading = SectionHeading.find(params[:id])

    respond_to do |format|
      if @section_heading.update_attributes(params[:section_heading])
        format.html { redirect_to @section_heading, notice: 'Section heading was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @section_heading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /section_headings/1
  # DELETE /section_headings/1.json
  def destroy
    @section_heading = SectionHeading.find(params[:id])
    @section_heading.destroy

    respond_to do |format|
      format.html { redirect_to section_headings_url }
      format.json { head :no_content }
    end
  end
end
