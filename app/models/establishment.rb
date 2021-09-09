class Establishment < ApplicationRecord

  validates :code, presence: { message: "Merci d'ajouter un code." }
end
