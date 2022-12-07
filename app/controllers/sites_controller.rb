class SitesController < ApplicationController
  def home
  end

  def consent
  end

  def reset
    reset_session
    redirect_to root_path
  end
end
