# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask; end

  def answer
    @user_input = params[:question]
    @coach = build_answer(@user_input)
  end

  private

  def build_answer(input)
    input = input.downcase

    if input == 'i am going to work'
      'Great!'
    elsif input.include? '?'
      'Silly question, get dressed and go to work!'
    else
      'I don\'t care, get dressed and go to work!'
    end
  end
end
