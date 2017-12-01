DataMapper.setup(:default, {:adapter  => "redis"})

class User
  include Redis::Objects
  include DataMapper::Resource

  property :id, Serial

  value :name#, :expiration => 3.minute
  value :email#, :expiration => 3.minute
end

User.finalize
