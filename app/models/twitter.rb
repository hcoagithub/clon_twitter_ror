class Twitter < ApplicationRecord

    validates :user_name, presence: true
    validates :description, presence: true
   

    include PgSearch::Model
    pg_search_scope :search_full_text,
against: {
    user_name: 'A',
    id: 'B',
    }

end
