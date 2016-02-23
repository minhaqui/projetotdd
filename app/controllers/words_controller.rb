class WordsController < ApplicationController
  def learn
    @word = Word.new
  end
end
