class StoresController < ApplicationController
  before_action :set_store, only: [:show, :destroy]
  def index
    @stores = Store.all
  end

  def show
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    @store.save

    redirect_to store_path(@store)
  end


  def destroy
    @store.destroy

    redirect_to stores_path

  end

  private

  def set_store
    @store = Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:name, :address)
  end
end
