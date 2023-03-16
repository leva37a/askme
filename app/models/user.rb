class User < ApplicationRecord
  has_secure_password

  before_save :downcase_nickname

  validates :nickname, uniqueness: true, length: {maximum: 40},
                       format: { with: /\A[a-zA-Z\d_]+\z/ }
  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/ }

  def downcase_nickname
    nickname.downcase!
  end
end
