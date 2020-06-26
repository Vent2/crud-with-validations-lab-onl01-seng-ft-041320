class Song < ApplicationRecord
    include ActiveModel::Validations

    validates :title, presence: true
    validates :title, uniqueness: true

    validates_with ReleaseYearValidator
end