require_relative 'config/environment'
class App < Sinatra::Base
  include Math 
  # Write your code here!

  get '/reversename/:name' do 
    @user_name = params[:name]
    "#{@user_name.reverse}"
  
  end 

  get '/square/:number' do 
 
    @sqr = params[:number].to_i**2
    "#{@sqr}"

    
  end 

  get '/say/:number/:phrase' do 
  @phrase = params[:phrase]
  @times = params[:number].to_i
  @phrase*@times  
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @words = params.values

    "#{@words.join(" ")}."
    #.split(",").join(" ")



  end 

  get '/:operation/:number1/:number2' do 
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @oper
      when "subtract"
        (@num1 - @num2).to_s
      when "add"
        (@num1 + @num2).to_s
      when "multiply"
        (@num1 * @num2).to_s
      when "divide"
        (@num1 / @num2).to_s
    end
  end 

end