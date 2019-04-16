class User < ApplicationRecord


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :annonces
  belongs_to :role

  validates :role_id,presence: true

  #validates :auth_token, uniqueness: true
  #before_create generate_token


  def full_name
    "#{first_name} #{last_name}"
  end


  def generate_token
    self.auth_token = SecureRandom.uuid
    if self.save
      return auth_token
    else
      return nil
    end
  end

end
