class Stock < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence:true,
                     length:{ minimum: 2 }
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/use3.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
