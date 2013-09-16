get '/' do
  # @grandma = params[:grandma]
  # Look in app/views/index.erb
  if params[:grandma] 
    if params[:grandma] == 'BYE'
      @grandma = "Go away!"
    elsif params[:grandma] == params[:grandma].upcase
      @grandma = "I USED TO BE SO YOUNG, NOW IM ALL SAGGY!"
    else
      @grandma = "MANBEARPIG RAWRRRRRRRRRRR"
    end
  end

  erb :index
end

post '/grandma' do
  redirect "/?grandma=#{params[:user_input]}"
end
