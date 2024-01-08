class CreateInterventions < ActiveRecord::Migration[7.1]
  def change
    create_table :interventions do |t|
      t.string :title
      t.text :description
      t.integer :service_type, default: 0 # Use an integer to represent the enum
      t.datetime :appointment_datetime
      t.references :user, foreign_key: true
      t.string :image_link

      t.timestamps
    end
  end
end
