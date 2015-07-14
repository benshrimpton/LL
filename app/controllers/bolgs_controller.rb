class BolgsController < ApplicationController
  before_action :set_bolg, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bolgs = Bolg.all
    respond_with(@bolgs)
  end

  def show
    respond_with(@bolg)
  end

  def new
    @bolg = Bolg.new
    respond_with(@bolg)
  end

  def edit
  end

  def create
    @bolg = Bolg.new(bolg_params)
    @bolg.save
    respond_with(@bolg)
  end

  def update
    @bolg.update(bolg_params)
    respond_with(@bolg)
  end

  def destroy
    @bolg.destroy
    respond_with(@bolg)
  end

  private
    def set_bolg
      @bolg = Bolg.find(params[:id])
    end

    def bolg_params
      params[:bolg]
    end
end
