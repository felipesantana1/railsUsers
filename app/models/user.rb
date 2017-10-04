class User < ActiveRecord::Base
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, presence: true, length: { in: 2..15 }
    validates :email, presence: true, format: { with: EMAIL_REGEX }
    validates :age, presence: true, numericality: { only_integer: true }
    validates_inclusion_of :age, :in => 10...150
end
