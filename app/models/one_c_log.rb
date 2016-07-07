class OneCLog < ActiveRecord::Base
  has_attached_file :attachment
  attr_accessible :attachment
  do_not_validate_attachment_file_type :attachment
end
