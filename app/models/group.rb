class Group < ActiveRecord::Base
  belongs_to :user
  has_many :group_memberships
  accepts_nested_attributes_for :group_memberships, :reject_if => lambda { |a| a[:user_id].blank? }, :allow_destroy => true

end
