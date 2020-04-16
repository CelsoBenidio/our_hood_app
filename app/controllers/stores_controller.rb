class StoresController < ApplicationController
  before_action :set_store, only: [:show, :destroy]
  def index
    @stores = policy_scope(Store).all

    @stores = Store.geocoded

    @markers = @stores.map do |store|
      {
        lat: store.latitude,
        lng: store.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { store: store })
      }
    end
  end

  def show
    authorize @store
  end

  def new
    @store = Store.new
    authorize @store
  end

  def create
    @store = Store.new(store_params)
    @store.save
    authorize @store

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
    params.require(:store).permit(:name, :address, :photo)
  end
end
