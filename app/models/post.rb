class Post < ActiveRecord::Base
    belongs_to :category

  has_many :taggings, dependent: :destroy
    has_many :tags, through: :taggings

    mount_uploader :image, ImageUploader
    mount_uploader :image1, ImageUploader
    mount_uploader :image2, ImageUploader
    mount_uploader :image3, ImageUploader
    validates :title, :summary, :body, presence: true

include PgSearch
    pg_search_scope :search_everywhere, against: [:title, :body]
    paginates_per 4

    def all_tags
        self.tags.map(&:name).join(', ')
    end
    def all_tags=(names)
        self.tags = names.split(',').map do |name|
        Tag.where(name: name.strip).first_or_create
    end
    end
end
