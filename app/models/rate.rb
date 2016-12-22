class Rate < ActiveRecord::Base
  belongs_to :courier, class_name: "Courier"
  belongs_to :company
end
