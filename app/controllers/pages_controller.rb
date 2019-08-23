class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def aboutus
  end

  def actes
  end

  def contact
  end
end
