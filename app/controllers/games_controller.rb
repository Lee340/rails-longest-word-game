class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @word = params[:word]
    @letters = params[:letters]

    can_be_built = @word.chars.all? { |letter| @letters.include? letter }

    @result = can_be_built ? 'Well done!' : 'You lost'
  end
end
