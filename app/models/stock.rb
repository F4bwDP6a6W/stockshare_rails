class Stock < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence:true,
                     length:{ minimum: 2 }
end
