class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :kitchen_sink]

  def home
  end

  def kitchen_sink
    @friend = User.new
    @match = Match.new
  end
end
