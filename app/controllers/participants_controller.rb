class ParticipantsController < ApplicationController
  def index
    @participant_posts = current_user.participant_posts
  end

  def create
    participant = Participant.new
    participant.user_id = current_user.id
    participant.post_id = params[:post_id]

    if participant.save
      redirect_to posts_path, success: '参加申請しました'
    else
      redirect_to posts_path, danger: '参加申請に失敗しました'
    end
  end
  
  
  def destroy
    participant = Participant.find_by(user_id:current_user.id, post_id:params[:post_id])
    participant.destroy
    redirect_to posts_path ,success: '申請を解除しました。'
  end
end
