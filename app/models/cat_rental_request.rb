class CatRentalRequest < ActiveRecord::Base
  validates :status, presence: true, inclusion: {in: ["PENDING", "APPROVED", "DENIED"]}
  validates :cat_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :overlapping_approved_requests

  belongs_to :cat,
    foreign_key: :cat_id,
    primary_key: :id,
    class_name: 'Cat'


  def overlapping_requests
    CatRentalRequest.where(end_date: start_date..(end_date + 1), cat_id: self.cat_id).where.not(id: self.id)
  end

  def overlapping_approved_requests
    overlaps = overlapping_requests

    if self.status != "APPROVED"
      return true
    elsif overlaps.where(status: "APPROVED").empty?
      return true
    else
      errors[:base].push("PROBLEM WITH RENTING SAME CAT TWICE")
    end

  end

end
