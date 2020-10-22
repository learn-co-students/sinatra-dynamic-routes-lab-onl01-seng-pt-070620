require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    #binding.pry 
    params["name"].reverse
  end

  get '/square/:number' do 
    #binding.pry
    variable= params["number"].to_i*params["number"].to_i
    variable.to_s
  end 

  get '/say/:number/:phrase' do
    #binding.pry
    answer = ''
    variable_number = params["number"].to_i
    variable_number.times do
      answer += params[:phrase] 
    end
    answer
  end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
   #binding.pry
  # params["word1"] + " " + params["word2"] + " " + params["word3"] + " " + params["word4"] + " " + params["word5"] + "."
  "#{params["word1"]}" + " " + "#{params["word2"]}" + " " + "#{params["word3"]}" + " " + "#{params["word4"]}" + " " + "#{params["word5"]}" "."
  end
 
    get '/:operation/:number1/:number2' do
      #binding.pry
      # @result = params[:num1].to_i * params[:num2].to_i
      # "#{@result}"
        @operation = params[:operation]
        @num1 = params[:number1].to_i
        @num2 = params[:number2].to_i
        case @operation
          when "add"
          "#{@num1 + @num2}"
         when "subtract"
          "#{@num2 - @num1}"
         when "multiply"
          "#{@num1 * @num2}"
         when "divide"
          "#{@num1 / @num2}"
        end 
      end 
    
end

  