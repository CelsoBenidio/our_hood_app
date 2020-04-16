class PagesController < ApplicationController
  def home
  end

  def search
    @stores = Store.all
    @products = Product.all
    if params[:query].present? #if you insert anything in search bar
      @results = PgSearch.multisearch(params[:query])
    end
  end
end



