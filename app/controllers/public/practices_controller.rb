class Public::PracticesController < ApplicationController

  def show
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
