class BrandDropsController < ApplicationController
  before_action :set_brand_drop, only: [:show, :edit, :update, :destroy]

  # GET /brand_drops
  # GET /brand_drops.json
  def index
    @brand_drops = BrandDrop.all
  end

  # GET /brand_drops/1
  # GET /brand_drops/1.json
  def show
    @comment = @brand_drop.comments
  end

  # GET /brand_drops/new


  # GET /brand_drops/1/edit
  def edit
  end

  # POST /brand_drops
  # POST /brand_drops.json
  def create
    @brand_drop = BrandDrop.new(brand_drop_params)
    
    respond_to do |format|
      if @brand_drop.save
        format.html { redirect_to @brand_drop, notice: 'Brand drop was successfully created.' }
        format.json { render :show, status: :created, location: @brand_drop }
      else
        format.html { render :new }
        format.json { render json: @brand_drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brand_drops/1
  # PATCH/PUT /brand_drops/1.json
  def update
    respond_to do |format|
      if @brand_drop.update(brand_drop_params)
        format.html { redirect_to @brand_drop, notice: 'Brand drop was successfully updated.' }
        format.json { render :show, status: :ok, location: @brand_drop }
      else
        format.html { render :edit }
        format.json { render json: @brand_drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brand_drops/1
  # DELETE /brand_drops/1.json
  def destroy
    @brand_drop.destroy
    respond_to do |format|
      format.html { redirect_to brand_drops_url, notice: 'Brand drop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand_drop
      @brand_drop = BrandDrop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brand_drop_params
      params.require(:brand_drop).permit(:article_title, :content, :brand_id, :article_image1, :article_image2, :article_image3)
    end
end
