class Cat < ActiveRecord::Base
  validates :birth_date, presence: true
  color_options = ["red", "blue", "orange", "black", "white"]
  validates :color, presence: true, inclusion: { in: color_options }
  validates :name, presence: true
  validates :sex, presence: true, inclusion: {in: ["M", "F"]}

end
