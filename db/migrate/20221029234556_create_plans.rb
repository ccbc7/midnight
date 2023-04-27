class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :title
      t.datetime :StartDay
      t.datetime :EndDay
      t.string :AllDay

      t.timestamps
    end
  end
end
