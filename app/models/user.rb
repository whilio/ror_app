class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments

  def self.create_user(number)
    number.times do
      create(fname: Faker::Name.first_name,
             lname: Faker::Name.last_name,
             email: Faker::Internet.email,
             password: Faker::Internet.password)
    end
  end
end
