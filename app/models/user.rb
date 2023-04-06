class User < ApplicationRecord
  has_secure_password

  before_validation :downcase_nickname, :downcase_email

  validates :header_color, format: { with: /\A#([a-f0-9]{3}){1,2}\z/i }

  validates :nickname, presence: true, uniqueness: true, length: {maximum: 40},
                       format: { with: /\A\w+\z/ }
  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }

  has_many :questions, dependent: :delete_all

  include Gravtastic
  gravtastic(secure: true, filetype: :png, size: 100, default: "retro")

  private

  def downcase_nickname
    nickname&.downcase!
  end

  def downcase_email
    email&.downcase!
  end
end
