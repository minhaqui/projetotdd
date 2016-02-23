require 'test_helper'

class WordsControllerTest < ActionController::TestCase
  test "should get learn" do
    get :learn
    assert_response :success
  end

  test "learn method passes a random word" do
    some_word = Word.new
    Word.expects(:random).returns(some_word)
    get 'learn'
    assert_equal some_word, assigns('word')
  end
end
