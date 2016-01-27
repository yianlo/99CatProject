class Cat < ActiveRecord::Base
  validates :birth_date, presence: true
  color_options = ["red", "blue", "orange", "black", "white"]
  validates :color, presence: true, inclusion: { in: color_options }
  validates :name, presence: true
  validates :sex, presence: true, inclusion: {in: ["M", "F"]}

  has_many :cat_rental_requests,
    foreign_key: :cat_id,
    primary_key: :id,
    class_name: 'CatRentalRequest',
    dependent: :destroy

end
