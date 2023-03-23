class Public::PracticesController < ApplicationController

  def new
    @letter=Letter.find(params[:sample_id])
  end

  def index
    # 一応書いただけ
    @practice_records=PracticeRecord.all
  end



  def  image

  end

  def destroy
  end

end
