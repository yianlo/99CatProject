class CatRentalRequest < ActiveRecord::Base
  validates :status, presence: true, inclusion: {in: ["PENDING", "APPROVED", "DENIED"]}
  validates :cat_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  def overlapping_requests
    overlaps = CatRentalRequest.where(start_date: self.start_date..self.end_date, cat_id: self.cat_id).where.not(id: self.id)

  end

  def overlapping_approved_requests

  end
end
