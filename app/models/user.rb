class User < ApplicationRecord
  has_many :zweets
  def to_s
    "#{name} @#{pseudo}"
  end
end