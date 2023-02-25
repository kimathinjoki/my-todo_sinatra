class Todo < ActiveRecord::Base
    enum :status, [:CREATED, :ONGOING, :COMPLETED, :CANCELED]

end
