class GotchasController < ApplicationController
  # GET /gotchas
  # GET /gotchas.json
  def index
    @gotchas = Gotcha.all
    @gotcha = Gotcha.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gotchas }
    end
  end

  # GET /gotchas/1
  # GET /gotchas/1.json
  def show
    @gotcha = Gotcha.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gotcha }
    end
  end

  # GET /gotchas/new
  # GET /gotchas/new.json
  def new
    @gotcha = Gotcha.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gotcha }
    end
  end

  # GET /gotchas/1/edit
  def edit
    @gotcha = Gotcha.find(params[:id])
  end

  # POST /gotchas
  # POST /gotchas.json
  def create
    @gotcha = Gotcha.new(params[:gotcha])

    respond_to do |format|
      if @gotcha.save
        format.html { redirect_to gotchas_url, notice: 'Gotcha was successfully created.' }
        format.json { render json: @gotcha, status: :created, location: @gotcha }
      else
        format.html { render action: "new" }
        format.json { render json: @gotcha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gotchas/1
  # PUT /gotchas/1.json
  def update
    @gotcha = Gotcha.find(params[:id])

    respond_to do |format|
      if @gotcha.update_attributes(params[:gotcha])
        format.html { redirect_to @gotcha, notice: 'Gotcha was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gotcha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gotchas/1
  # DELETE /gotchas/1.json
  def destroy
    @gotcha = Gotcha.find(params[:id])
    @gotcha.destroy

    respond_to do |format|
      format.html { redirect_to gotchas_url }
      format.json { head :no_content }
    end
  end
end
