class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_store

  def index
    if params[:query].present?
      @products_results = PgSearch.multisearch(params[:query])
      @products = @store.products
    else
      @products = @store.products
    end
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.store = @store
    if @product.save
      redirect_to store_product_path(@store, @product), notice: 'Product is created.'
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "Product is updated."
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to store_products_path, notice: "Product is removed."
  end


  private

  def set_product
    @product = Product.find(params[:id])
  end

  def set_store
    @store = Store.find(params[:store_id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :description)
  end

end
