require_relative"lib/PasswordChecker.rb/"
require "sinatra"
require "sinatra/reloader"

puts test = PasswordChecker.new.check_password("abdul@gmail.com", "Aa1!asdlkjfh")

get "/" do
	erb :home
end

get "/congrats" do
	erb :congrats
end

post "/login" do
	correct = PasswordChecker.new.check_password(params[:email], params[:password])
		if correct
			redirect to("/congrats")
		else 
			redirect to("/")
		end
end	
