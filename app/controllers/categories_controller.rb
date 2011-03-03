class CategoriesController < ApplicationController
  # TODO: somehow make it not necessary to define index
  def index
    @categories = current_user.categories.all
  end
end
