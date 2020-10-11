require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get "/reversename/:name" do

    name = params[:name]
    name.reverse
  end

  get "/square/:number" do

    name = params[:number]
    num = name.to_i * name.to_i
    num.to_s
  end

  get "/say/:number/:phrase" do

    number = params[:number]
    name = params[:phrase]
    number = number.to_i
    phrase = ""
    i = 0
    while i < number do 
      phrase += name
      i += 1
    end
    phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do

    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    word1 + " " + word2 + " " + word3 + " " + word4 + " " + word5 + "."
  end

  get "/:operation/:number1/:number2" do



    op = params[:operation]
    num1 = params[:number1]
    num2 = params[:number2]
    
    case op 
    when "add"
      op = "+"
    when "subtract"
      op = "-"
    when "multiply"
      op = "*"
    when "divide"
      op = "/"
    end

    num = eval("#{num1} #{op} #{num2}")
    num.to_s
  end


end