require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    reversed = @user_name.reverse
    "#{reversed}"
  end

  get '/square/:number' do
    num = params[:number]
    squared_num = num.to_i ** 2
    "#{squared_num}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    words = params[:phrase]
    arr = []
    num.times {
      arr << "#{words}"
    }
    arr
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    arr = []

    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    ops = params[:operation]

    if ops == "add"
      sum = num1 + num2
      sum.to_s
    elsif ops == "subtract"
      diff = num1 - num2
      diff.to_s
    elsif ops == "multiply"
      prod = num1 * num2
      prod.to_s
    elsif ops == "divide"
      quo = num1 / num2
      quo.to_s
    else
      puts "Please enter, add, subtract, multiply, or divide."
    end
  end

end
