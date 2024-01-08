class Intervention < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :service_type, inclusion: { in: %w[Plumbing Electrical Painting Cleaning Building] }
  validates :appointment_datetime, presence: true

  enum service_type: {
    plumbing: 0,
    electrical: 1,
    painting: 2,
    cleaning: 3,
    building: 4,
    other: 5 # Add an "other" option
  }

  # ...

  # Define a method to retrieve the dropdown options
  def self.service_type_options
    service_types.map { |key, _| [key.humanize, key] }
  end
end
