class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end

  def quisommesnous
  end

  def contact
  end

  def actes
  end
end
