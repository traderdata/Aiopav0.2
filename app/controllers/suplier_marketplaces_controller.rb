class SuplierMarketplacesController < ApplicationController
  before_action :require_login

  def new
    @marketplaces = Marketplace.all
    @marketplace = SuplierMarketplace.new
  end

  def create
    @marketplace = SuplierMarketplace.new(marketplace_params)
    @marketplace.suplier_id=1

    respond_to do |format|
      if @marketplace.save
        format.html { redirect_to marketplaces_path, notice: 'Marketplace was successfully created.' }
      else
        format.html { redirect_to marketplaces_path }
      end
    end
  end

  def edit
    @marketplace = SuplierMarketplace.find(params[:id])
    @marketplaces=Marketplace.all

  end

  def destroy
    @marketplace = SuplierMarketplace.find(params[:id])
    @marketplace.destroy
    respond_to do |format|
      format.html { redirect_to marketplaces_path, notice: 'Suplier was successfully destroyed.' }
    end
  end

  def update
    @marketplace = SuplierMarketplace.find(params[:id])
    respond_to do |format|
      if @marketplace.update(marketplace_params)
        format.html { redirect_to marketplaces_path, notice: 'Suplier was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def marketplace_params
    params.require(:suplier_marketplace).permit(:marketplace_id, :login, :password)
  end

end
