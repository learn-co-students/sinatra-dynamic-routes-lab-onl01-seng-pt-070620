require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number]
    "#{@num.to_i**2}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number]
    @phrase = params[:phrase]
    
    answer = ''

    @num.to_i.times do
      answer += @phrase
    end

    answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} " + "#{@w2} " + "#{@w3} " + "#{@w4} " + "#{@w5}" + "."
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]

    if @op == "add"
      result = "#{@num1.to_i + @num2.to_i}"
    elsif @op == "subtract"
      result = "#{@num1.to_i - @num2.to_i}"
    elsif @op == "multiply"
      result = "#{@num1.to_i * @num2.to_i}"
    else
      result = "#{@num1.to_i / @num2.to_i}"
    end
    result
  end

end