class NavsController < ApplicationController
  before_action :set_nav, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @navs = Nav.all
    respond_with(@navs)
  end

  def show
    respond_with(@nav)
  end

  def new
    @nav = Nav.new
    respond_with(@nav)
  end

  def edit
  end

  def create
    @nav = Nav.new(nav_params)
    @nav.save
    respond_with(@nav)
  end

  def update
    @nav.update(nav_params)
    respond_with(@nav)
  end

  def destroy
    @nav.destroy
    respond_with(@nav)
  end

  private
    def set_nav
      @nav = Nav.find(params[:id])
    end

    def nav_params
      params.require(:nav).permit(:title)
    end
end
