require_relative 'config/environment'

class App < Sinatra::Base
    
    get '/reversename/:name' do 
      @name = params[:name]
      "#{@name}".reverse
    end 

    get '/square/:number' do 
      # method one_works
      #(params[:number].to_i ** 2).to_s
      # method two_preferred 
      @number = params[:number]
      ("#{@number}".to_i ** 2).to_s
    end 

    get '/say/:number/:phrase' do 
       # solution attempt 1
      #((params[:number].to_i).times { params[:phrase] }).to_s
      # solution attempt 2 - works!
      [params[:phrase]].cycle(params[:number].to_i).to_a.join(' ')

      #binding.pry
    end 

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} " "#{params[:word2]} " "#{params[:word3]} " "#{params[:word4]} " "#{params[:word5]}" "."
    end 

    get '/:operation/:number1/:number2' do
      if params[:operation] == "add"
        "#{params[:number1].to_i + params[:number2].to_i}"
      elsif params[:operation] == "subtract"
        "#{params[:number1].to_i - params[:number2].to_i}"
      elsif params[:operation] == "multiply"
        "#{params[:number1].to_i * params[:number2].to_i}"
      elsif params[:operation] == "divide"
        "#{params[:number1].to_i / params[:number2].to_i}"
      end 
    end 


end