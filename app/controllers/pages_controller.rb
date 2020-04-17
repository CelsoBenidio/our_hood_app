class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end

  def search
    @stores = policy_scope(Store)
    @products = policy_scope(Product)
    if params[:query].present? #if you insert anything in search bar
      @results = PgSearch.multisearch(params[:query])
    end
  end
end



