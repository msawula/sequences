class GuessesController < ApplicationController

  def index

    @first = params["first_number"].to_i
    @second = params["second_number"].to_i
    @third = params["third_number"].to_i

    if (@first < @second && @second < @third)
      @outcome = "Yes!"
    else @outcome = "No."
    end
    render("guesses/index.html.erb")
  end


  def answer

    #params = {"rule" => "Hi there"}

    @user_answer = params["rule"]

    render("guesses/answer.html.erb")
  end
end
