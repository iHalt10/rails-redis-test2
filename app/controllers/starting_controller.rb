class StartingController < ApplicationController
  def index
    # @user = Redis::User.create(name: params["User"][:name], email: params["User"][:email])
    user = User.create
    user.name = 'TestUser'
    user.email = 'test@ggg.com'
    user = User.create
    user.name = 'TogoJuzo'
    user.email = 'duke@ggg.com'

    # user = User.find(:id => 1)

    # user = User.first(id: 2)
    # user.destroy
    # User.destory(id: 1)

    # users = User.all
    # @user = User.find(1)
    # name = user.name.value
    # email = user.email.value
    # binding.pry
    render :text => "Server Starting OK"
  end
end
