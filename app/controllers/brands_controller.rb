class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy, :upload_payment]

  # GET /brands
  # GET /brands.json
  def index
    @brands = Brand.where(active: 1)
    @brand_limited = Brand.where(active: 1).order("id desc").limit(5)
  end

  # GET /brands/1
  # GET /brands/1.json
  def show
    @comment = @brand.comments
  end

  # GET /brands/new
  def new
      if user_signed_in?
        if current_user.have_registered == 1
          redirect_to "/upload_payment/#{current_user.brand_id}"
        else
          @brand = Brand.new
        end
      else
       redirect_to user_session_path
      end
      
  end

  # GET /brands/1/edit
  def edit
  end

  # POST /brands
  # POST /brands.json
  def create
    @brand = Brand.new(brand_params)
    @currentUser = current_user
    respond_to do |format|
      if @brand.save
        @current_user.brand_id = @brand.id
        @current_user.have_registered = 1
        @currentUser.save
        format.html { redirect_to @brand, notice: 'Brand was successfully created.' }
        format.json { render :show, status: :created, location: @brand }
      else
        format.html { render :new }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brands/1
  # PATCH/PUT /brands/1.json
  def update
    respond_to do |format|
      if @brand.update(brand_params)
        format.html { redirect_to @brand, notice: 'Brand was successfully updated.' }
        format.json { render :show, status: :ok, location: @brand }
      else
        format.html { render :edit }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brands/1
  # DELETE /brands/1.json
  def destroy
    @brand.destroy
    respond_to do |format|
      format.html { redirect_to brands_url, notice: 'Brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def fashion_list
    @brand_fashion = Brand.where(active: 1, product_type: :fashion).order("id asc")
  end

  def footwear_list
    @brand_footwear = Brand.where(active: 1, product_type: :footwear).order("id asc")
  end

  def upload_payment
    if @brand.payment != nil
      redirect_to "/payment_success"
    end
  end

  def payment_success
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brand_params
      params.require(:brand).permit(:company_name, :email, :phone, :product_type, :product_name, :active, :image, :article_image1, :article_image2, :article_image3, :article_title, :article_overview, :payment)
    end
end
