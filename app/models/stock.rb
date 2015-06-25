class Stock < ActiveRecord::Base
  has_many :comments
  validates :title, presence:true,
                     length:{ minimum: 2 }
end
