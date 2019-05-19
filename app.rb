require "sinatra"

# require "stackdriver"
# require "google/cloud/trace"

# use Google::Cloud::Trace::Middleware

configure do
  set :random, Random.rand(9999999)
end

get "/r" do
  response.write "#{settings.random}"
  content_type "text/plain"
  status 200
end

get "/" do
  "hello world"
end

get "/c" do 
  response.write "hello world"
  content_type "text/plain"
  status 200
end

get "/e" do
  halt 401, "hello world not authorized"
end

get "/f" do
  content_type :json
  # Google::Cloud::Trace.in_span 'f_route' do |_span|
    [
      {name: 'foo', value: '1'},
      {name: 'bar', value: '2'}
    ].to_json
  # end
end