class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @boats = Boat.all
    @featured = []
      3.times do
        @featured << @boats.sample
      end
  end
end
