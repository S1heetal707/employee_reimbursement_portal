class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    validates :password, presence: true, length: { minimum: 8 }, format: { 
    with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+\z/, 
    message: "must include at least one lowercase letter, one uppercase letter, one digit, and one symbol"
  }
end
