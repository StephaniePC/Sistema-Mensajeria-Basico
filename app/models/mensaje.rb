class Mensaje < ApplicationRecord
	validates :De, presence: true

	def self.search(search)
    if search
      where('De LIKE ?', "%#{search}%").order('id DESC')
    else
      all
    end
  end
end
