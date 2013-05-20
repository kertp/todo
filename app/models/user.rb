class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation

  attr_accessor :password, :password_confirmation

  has_many :comments, :dependent => :destroy

  before_save :encrypt_password

  validates :password,  :presence => true, :confirmation => true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX}

    def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

    # Üldine meetod, ei kontrolli mingi konkreetse kasutaja omadusi
  def self.authenticate params
    user = find_by_email(params[:email])
    if user && user.password_hash == BCrypt::Engine.hash_secret(params[:password], user.password_salt)
      user
    else
      nil
    end      
  end
end
