class User < ApplicationRecord
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, uniqueness:  { case_sensitive: false }
  validates :name, presence: true, length: { minimum: 5 }, format: /(\w|\.|\'| )+\z/

  # validates :name, presence: true, length: { minimum: 5 }, format: /\A[^0-9`!@#\$%\^&*+_=;\[\]<>]+\z/
end
