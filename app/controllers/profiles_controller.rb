class ProfilesController < ApplicationController
  def show
    @profile = profile.find(params[:id])
  end
  
  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to root_path, success: '登録に成功しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  private
  def profile_params
    params.require(:profile).permit(:age, :sex, :job, :address, :introduce)
  end
  
end
