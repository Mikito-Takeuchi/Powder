class GelandesController < ApplicationController
  def index
    @gelandes = Gelande.all
  end
  
  def new
    @gelande = Gelande.new
  end

  def create
    @gelande = Gelande.new(gelande_params)
    
    @gelande.save
      redirect_to gelandes_path, success: '作成に成功しました'
    # else
    #   flash.now[:danger] = "作成に失敗しました"
    #   render :new
    # end
  end

  private
  def gelande_params
    params.require(:gelande).permit(:name, :address, :open_date, :close_date)
  end
end
