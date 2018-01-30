class Post < ActiveRecord::Base
    belongs_to :category
    mount_uploader :image, ImageUploader
    mount_uploader :image1, ImageUploader
    mount_uploader :image2, ImageUploader
    mount_uploader :image3, ImageUploader
    validates :title, :summary, :body, presence: true

include PgSearch
    pg_search_scope :search_everywhere, against: [:title, :body]
    paginates_per 1
end
