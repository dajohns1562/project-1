class User < ApplicationRecord

  has_secure_password
  validates :email, :presence => true, :uniqueness => true

  has_many :tweets, dependent: :destroy
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed

  after_create :follow_yourself

  private
    def follow_yourself
      @relationship = Relationship.create :followed_id => self.id, :follower_id => self.id
      self.relationships << @relationship
    end

end
