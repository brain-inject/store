class CategorizedNovelty < ActiveRecord::Base
  belongs_to :novelty
  belongs_to :category
end
