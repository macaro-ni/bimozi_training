class Public::PracticesController < ApplicationController

  def new
    # 一応書いただけ
    @practice_records=PracticeRecord.all
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
