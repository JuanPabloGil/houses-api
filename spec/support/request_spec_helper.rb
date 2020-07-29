module RequestSpecHelper
  def json
    JSON.parse(response.body)
  end

  def create_user
    User.create(id: 300,
                email: 'foobar0@test.com',
                password: '12345678',
                password_confirmation: '12345678')
  end

  def create_house
    User.create(id: 300,
                email: 'foobar0@test.com',
                password: '12345678',
                password_confirmation: '12345678')

    House.create(id: 300,
                 title: 'This is a good title',
                 price: 1200,
                 about: 'This is a good house description',
                 category: 'House',
                 user_id: 300)
  end

  def create_favorite
    User.create(id: 300,
                email: 'foobar0@test.com',
                password: '12345678',
                password_confirmation: '12345678')

    House.create(id: 300,
                 title: 'This is a good title',
                 price: 1200,
                 about: 'This is a good house description',
                 category: 'House',
                 user_id: 300)

    Favorite.create(id: 1, user_id: 300, house_id: 300)
  end

  def sign_in
    post '/sessions', params: { user: { email: 'foobar0@test.com', password: '12345678' } }
  end

  def log_out
    delete '/logout'
  end

  def post_favorite
    post '/appointments', params: { house_id: 300 }
  end

  def sign_up_user
    post '/registrations', params: { user: { email: 'foobar0@test.com',
                                             password: '12345678',
                                             password_confirmation: '12345678' } }
  end

  def sign_up_user_invalid
    post '/registrations', params: { user: { email: 'foobar0@test.com',
                                             password: '12345678',
                                             password_confirmation: '1234' } }
  end

  def post_house
    post '/houses', params: { house: { title: 'This is a good title',
                                       price: 1200,
                                       about: 'This is a good house description',
                                       category: 'House',
                                       user_id: 124 } }
  end
end
