class Item < ActiveRecord::Base
  belongs_to :user

  before_create :set_default_status, :set_expiration

  private
  def set_default_status
    self.status = 'open'
  end
  def set_expiration
    self.expiration = self.created_at + 7.days
  end
end
