module BookIt

  class Booking < ActiveRecord::Base
    include Bookable
  end

end