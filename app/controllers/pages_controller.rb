class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def aboutus
  end

  def actes
  end

  def contact
  end

  def conception
  end

  def education
  end

  def groupe_aide
  end

  def aide_individuelle
  end
end
