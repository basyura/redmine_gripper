class Gripe < ActiveRecord::Base
  unloadable
  belongs_to :user
  validate :validate_user

  def created_time
    created_on.localtime.strftime('%m/%d %H:%M')
  end

  private
  def validate_user
    unless self.user_id
      errors.add(:user_id, 'user_id is empty')
    end
  end
end
