class Item < ActiveRecord::Base
  belongs_to :user

  default_scope { order('updated_at DESC')}

 def expired?
   remaining = (created_at - 7.days.ago).ceil

   if remaining < 0
     true
   else
     false
   end
 end
end
