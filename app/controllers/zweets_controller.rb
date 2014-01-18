class ZweetsController < ApplicationController
  before_action :set_zweet, only: [:show, :edit, :update, :destroy]

  # GET /zweets
  # GET /zweets.json
  def index
    @zweets = Zweet.all
  end

  # GET /zweets/1
  # GET /zweets/1.json
  def show
  end

  # GET /zweets/new
  def new
    @zweet = Zweet.new
  end

  # GET /zweets/1/edit
  def edit
  end

  # POST /zweets
  # POST /zweets.json
  def create
    @zweet = Zweet.new(zweet_params)

    respond_to do |format|
      if @zweet.save
        format.html { redirect_to @zweet, notice: 'zweet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @zweet }
      else
        format.html { render action: 'new' }
        format.json { render json: @zweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zweets/1
  # PATCH/PUT /zweets/1.json
  def update
    respond_to do |format|
      if @zweet.update(zweet_params)
        format.html { redirect_to @zweet, notice: 'zweet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @zweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zweets/1
  # DELETE /zweets/1.json
  def destroy
    @zweet.destroy
    respond_to do |format|
      format.html { redirect_to zweets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zweet
      @zweet = Zweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zweet_params
      params.require(:zweet).permit(:status)
    end
end
