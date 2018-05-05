class User < ApplicationRecord
  has_many :posts
  has_many :audit_logs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true

  PHONE_REGEX = /\A[0-9]*\Z/

  validates_format_of :phone, with: PHONE_REGEX

  # validates :phone, length: { is: 14 }


  def full_name
    last_name.upcase + ", " + first_name.upcase
  end

end
