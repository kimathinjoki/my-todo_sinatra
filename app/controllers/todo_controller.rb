class TodoController < Sinatra::Base

   set :views, "./app/views"

     get '/hello' do
        "Welcome to TodoController"
     end

end