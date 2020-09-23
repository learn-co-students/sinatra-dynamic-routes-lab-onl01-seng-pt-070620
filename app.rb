require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @reversename = params[:name].to_s.reverse
    "#{@reversename}"
  end

  get '/square/:number' do 
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do 
    @n = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @n 
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence = ""
    params.values.each do |word|
      sentence += (word) + " "   
    end
    sentence.strip + "."
  end

  get '/:operation/:number1/:number2' do
      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i
      @operation = params[:operation]
      result = 0
    if @operation == "add"
      result = @number1 + @number2
      result.to_s
    elsif @operation == "subtract"
      result =  @number1 - @number2
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

