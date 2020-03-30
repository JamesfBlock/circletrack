class PackagesController < ApplicationController
before_action :authenticate_user!

  #All Packages
  def index
      @packages = Package.all
  end

  def show
      @package = Package.find(params[:id])
  end

  def new
    @package = Package.new # needed to instantiate the form_for
  end

end
