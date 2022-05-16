class QuestionsController < ApplicationController
  def ask
  end

  def answer
    input = params[:question]
    answers = ["Silly question, get dressed and go to work!", "Great!", "I don't care, get dressed and go to work!"]

    if input == "I am going to work"
      @answer = answers[1]
    elsif input.end_with?('?')
      @answer = answers[0]
    else
      @answer = answers[2]
    end
  end
end
