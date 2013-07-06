class CalculatorController < ApplicationController
  def add
    if params[:first] && params[:second]
      @answer = params[:first].to_i + params[:second].to_i
      render :add
    end
  end

   def subtract
    if params[:first_s] && params[:second_s]
      @answer_s = params[:first_s].to_i - params[:second_s].to_i
      render :subtract
    end
  end
end
