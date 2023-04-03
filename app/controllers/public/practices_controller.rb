class Public::PracticesController < ApplicationController

  def new
    @letter =  Letter.find(params[:sample_id])
  end

  def index
    @practice_records = current_user.practice_records
    if params[:name].present?
      @practice_records = current_user.practice_records.left_joins(:letter).where('letters.name LIKE ?', "%#{params[:name]}%")
    end
  end



  def  image
    @letter =  Letter.find(params[:id])
    practice = @letter.practice_records.create(user_id: current_user.id)
    practice.parse_base64(params[:image][:body])

  end

  def destroy
    practice_record=PracticeRecord.find(params[:id])
    practice_record.destroy
    redirect_to practices_path
  end

end
