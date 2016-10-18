require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/shoe_order')
require_relative('./db/sql_runner')

get '/shoos/order/new' do
  erb(:new)
end

post '/shoos/order' do
  @order = ShoeOrder.new(params)
  @order.save
  erb(:create)
end

get '/shoos/orders' do
 @orders = ShoeOrder.all()
 erb(:index)
end