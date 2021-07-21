class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name
  # 6文字以上の半角英数字の制限
  validates :password,length: { minimum: 6 }, format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]/ }

end


