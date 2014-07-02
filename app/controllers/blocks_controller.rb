class BlocksController < ApplicationController
  before_action :set_block, only: [:show, :edit, :update, :destroy]

  # GET /blocks
  def index
    @blocks = Block.all
  end

  # GET /blocks/1
  def show
  end

  # GET /blocks/new
  def new
    @block = Block.new
  end

  # GET /blocks/1/edit
  def edit
  end

  # POST /blocks
  def create
    @block = Block.new(block_params)

    respond_to do |format|
      if @block.save
        format.html { redirect_to @block, notice: 'Block was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /blocks/1
  def update
    respond_to do |format|
      if @block.update(block_params)
        format.html { redirect_to @block, notice: 'Block was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /blocks/1
  def destroy
    @block.destroy
    respond_to do |format|
      format.html { redirect_to blocks_url, notice: 'Block was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_block
      @block = Block.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def block_params
      params.require(:block).permit(:name)
    end
end
