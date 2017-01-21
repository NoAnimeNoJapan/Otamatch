class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable
         # :recoverable, :rememberable, :trackable
  has_many :circle_joins, dependent: :destroy
  has_many :circles
  has_many :events
  has_many :comments
end



