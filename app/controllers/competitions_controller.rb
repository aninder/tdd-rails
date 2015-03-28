class CompetitionsController < ApplicationController
  def new
    @competition=Competition.new
  end
  def show

  end
  def create
    @competition = Competition.new params.require(:competition).permit(:name)
    if @competition.save
      redirect_to @competition, notice:"Competition created"
    else
      render :new
    end

  end
end