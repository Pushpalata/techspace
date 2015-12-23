class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :name,  :presence => true
  
  has_many :feeds, -> { order("created_at desc")}
  has_many :visits, -> { order("started_at desc")}
  has_many :posts
  has_one :address
  
  def generate_ref_uid
    uid = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless User.exists?(ref_uid: random_token)
    end
    update_column("ref_uid", uid)
  end
  
  def reset_ref_uid
    update_column("ref_uid", nil)
  end
  
end
