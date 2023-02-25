class TodoController < Sinatra::Base

   set :views, "./app/views"
   set :default_content_type, :html

     get '/hello' do
        "Welcome to TodoController"
     end

     get '/view/todos' do
      @todos = Todo.all.map { |todo|
         {
           todo: todo,
           badge: todo_status_badge(todo.status)
         }
       }
       @i = 1
       erb :todos, :format => :html
     end

     post '/todos/create' do
        data = JSON.parse(request.body.read)

        begin
              # approach 1
            #   today = Time.now
            #   title = data["title"]
            #   description = data["description"]
     
            #  todo = Todo.create(title: title, description: description, createdAt: today)
     
            #  todo.to_json

             #approach 2 using hash of columns

             data["createdAt"] = Time.now
             todo = Todo.create(data)

             [201,todo.to_json]

         
            rescue => exception

            [422,{
               error: exception.message
            }.to_json]
         
         end
      
      end


      get '/todos' do
         Todo.all.to_json
      end

      put "/todos/update/:id" do

         begin
            data = JSON.parse(request.body.read)
         todo_id = params["id"].to_i 
         todo = Todo.find(todo_id)
         todo.update(data)
         {message: "todo updated succesfully"}.to_json
         rescue =>e 
            [422,{
               error: e.message
            }.to_json]
         end
      end

      delete "/todos/delete/:id" do
         begin
         delete_id = params["id"].to_i
         todo = Todo.find(delete_id)
         todo.destroy
         {message: "todo deleted succesfully"}.to_json
         rescue => e
            {error: e.message}
         end
      end

      private

      # @helper: format status style
    def todo_status_badge(status)
      case status
          when 'CREATED'
              'bg-info'
          when 'ONGOING'
              'bg-success'
          when 'CANCELLED'
              'bg-primary'
          when 'COMPLETED'
              'bg-warning'
          else
              'bg-dark'
      end
  end
      

end