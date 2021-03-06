class Mushroom < ApplicationRecord
  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"] #or any other attribute that does not need validation
  VALIDATABLE_ATTRS = Mushroom.attribute_names.reject{|attr| NON_VALIDATABLE_ATTRS.include?(attr)}

  validates_presence_of VALIDATABLE_ATTRS
end
