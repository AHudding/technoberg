class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :position
      t.string :dates
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
