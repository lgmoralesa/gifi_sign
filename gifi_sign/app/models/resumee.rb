class Resumee < ApplicationRecord
  has_and_belongs_to_many :members , depends: :destroy
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
 validates :name, presence: true # Make sure the owner's name is present.
end
