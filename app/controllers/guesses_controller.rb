class GuessesController < ApplicationController

  def index

    @first_val = params["first_number"].to_i
    @second_val = params["second_number"].to_i
    @third_val = params["third_number"].to_i

    if (@first_val < @second_val && @second_val < @third_val)
      @outcome = "Yes!"
    else
      @outcome = "No."
    end

@list = Guess.all
g = Guess.new
g.first_num = params["first_number"]
g.second_num = params["second_number"]
g.third_num = params["third_number"]
g.outcome = @outcome
g.save
    render("guesses/index.html.erb")
  end


  def answer

    #params = {"rule" => "Hi there"}

    @user_answer = params["rule"]

    render("guesses/answer.html.erb")
  end
end
