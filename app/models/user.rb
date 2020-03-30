class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         #each user has many packages
         #1) If they are a package agent
         #2) They are expecting a package i.e package recipient.
        has_many :packages

end
