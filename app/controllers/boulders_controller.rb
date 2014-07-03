class BouldersController < ApplicationController
  before_action :set_boulder, only: [:show, :edit, :update, :destroy]

  # GET /boulders
  def index
    @boulders = Boulder.all
  end

  # GET /boulders/1
  def show
  end

  # GET /boulders/new
  def new
    @boulder = Boulder.new
  end

  # GET /boulders/1/edit
  def edit
  end

  # POST /boulders
  def create
    @boulder = Boulder.new(boulder_params)

    respond_to do |format|
      if @boulder.save
        format.html { redirect_to @boulder, notice: 'Boulder was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /boulders/1
  def update
    respond_to do |format|
      if @boulder.update(boulder_params)
        format.html { redirect_to @boulder, notice: 'Boulder was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /boulders/1
  def destroy
    @boulder.destroy
    respond_to do |format|
      format.html { redirect_to boulders_url, notice: 'Boulder was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boulder
      @boulder = Boulder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boulder_params
      params.require(:boulder).permit(:name, :sector_id, :region_id, :block_id)
    end
end
