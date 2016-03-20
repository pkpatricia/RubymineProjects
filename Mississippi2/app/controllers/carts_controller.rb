class CartsController < ApplicationController
	before_filter :check_that_user_signed_in
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
		@cart.user_id = session[:user]
  end

  # GET /carts/1/edit
  def edit
  end

# POST /carts
def create
	@cart = Cart.new(cart_params)
	@cart.user_id= session[:user]
	if @cart.save
		session[:cart] = @cart.id
		redirect_to @cart, :notice => 'Cart was successfully created.' 
	else
		render :new
	end
end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
		@cart = Cart.find(params[:id])
		@cart.destroy
		session[:cart] = nil
		redirect_to root_url
  end
	
	# PUT /carts/1/checkout
	def checkout
		
		if session[:cart].nil? then
			redirect_to root_url
		else
			@cart = Cart.find(session[:cart])
			@cart.destroy
			session[:cart] = nil
		end
			
	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.require(:cart).permit(:user_id, :description)
    end
end
