class MarketplacesController < ApplicationController
  before_action :require_login

  def index
    @marketplaces = Marketplace.all
    @suplier = Suplier.find(1);#1 é o codigo do suplier logado
  end


end
