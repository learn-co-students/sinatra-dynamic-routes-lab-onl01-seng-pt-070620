

require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do 
    @number = params[:number].to_i 
    square = @number * @number
    square.to_s
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1] + ' '
    @word2 = params[:word2] + ' '
    @word3 = params[:word3] + ' '
    @word4 = params[:word4] + ' '
    @word5 = params[:word5]
    @word1 + @word2 + @word3 + @word4 + @word5 + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    result = 0
    if @operation == 'add'
      result = @number1 + @number2
      result.to_s
    elsif @operation == 'subtract'
      result = @number1 - @number2
      result.to_s
    elsif @operation == "multiply"
      result = @number1 * @number2
      result.to_s
    elsif @operation == "divide"
      result = @number1 / @number2
      result.to_s
    end
  end

end