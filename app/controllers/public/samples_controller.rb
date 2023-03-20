class Public::SamplesController < ApplicationController

 def index
  @genres=Genre.all
 end

  def show

  end
end
