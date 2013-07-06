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

  def multiply
    if params[:first_m] && params[:second_m]
      @answer_m = params[:first_m].to_i * params[:second_m].to_i
      render :multiply
    end
  end
end
