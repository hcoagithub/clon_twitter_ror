class Twitter < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search_full_text,
against: {
    user_name: 'A',
    id: 'B',
    }

end
