get '/' do
  redirect '/posts'
end

get '/posts' do
  @posts = Post.all
  erb :index
end

get '/posts/:id/vote' do
  post = Post.find(params[:id])
  post.votes.create(value: 1)
  redirect '/posts'
end

get '/posts/:id/delete' do
  @post = Post.find(params[:id])
  erb :delete
end

delete '/posts/:id' do
  post = Post.find(params[:id])
  post.destroy
  redirect '/posts'
end

post '/posts' do
  Post.create( title: params[:title],
              content: Faker::Lorem.paragraph(10),
              username: Faker::Internet.user_name,
              comment_count: rand(1000) )
  redirect '/posts'
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :post
end