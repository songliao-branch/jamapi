class User < ActiveRecord::Base
  has_secure_password
  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

  # username is not required for account creation, and it is unique
  # validates :username, :length => { :within => 3..25 },
  #                        :uniqueness => true
  validates :email, :presence => true,
                    :length => { :maximum => 100 },
                    :format => EMAIL_REGEX,
                    :uniqueness => true
end
