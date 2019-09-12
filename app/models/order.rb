class Order < ApplicationRecord
    belongs_to :user
    has_many :order_items
    scope :active, -> { where(status: true) }

    def created_at
        self[:created_at].strftime("%d %^b %Y")
    end
end
