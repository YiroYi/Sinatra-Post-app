require 'sinatra'

# Listen on all interfaces in the development environment
# This is needed when we run from Cloud 9 environment
# source: https://gist.github.com/jhabdas/5945768
set :bind, '0.0.0.0'
set :port, 8080

get '/' do
  @t_msg = [ 
    { nick: "Harri", msg: "Hello World!" }, 
    { nick: "Ioana", msg: "Buna dimineata" },
    { nick: "Alexandru", msg: "sunt fericit" } 
  ]

  erb :v_message, :layout => :l_main 
end
