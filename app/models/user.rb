class User < ActiveRecord::Base
  
  has_many :purchases, foreign_key: :purchaser_id
  has_many :designed_shirts, class_name: :Shirt, foreign_key: :designer_id
  has_many :purchased_shirts, through: :purchases, source: :shirt
  has_many :sales, through: :designed_shirts
  has_many :clients, through: :sales, source: :purchaser
  has_many :supported_designers, through: :purchased_shirts, source: :designer

  validates     :email, { :presence => true}
  validates     :email, { :uniqueness => true }
  validate      :validate_password
  
  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(password_from_user)
    @password_from_user = password_from_user
    @password = BCrypt::Password.create(password_from_user)
    self.hashed_password = @password
  end  
  
  def authenticate(password)
    @user = User.find_by(email: email)
    
    if @user == nil then return nil end
      
    if @user.password == password
      return @user
    else
      return nil
    end
  end
  
  def validate_password
    if @password_from_user.length == 0
      self.errors.add(:password, "was not provided")
    end
  end


end
