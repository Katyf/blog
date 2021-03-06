class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  belongs_to :category
  has_many :links, dependent: :destroy
end
