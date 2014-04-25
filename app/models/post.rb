class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :user, presence: true

  def self.create_post(number)
    number.times do
      uids = User.all.pluck(:id)
      create(title: Faker::Lorem.sentence,
             content: Faker::Lorem.paragraph(2 + rand(8)),
             user_id: uids.sample)
    end
  end
end
