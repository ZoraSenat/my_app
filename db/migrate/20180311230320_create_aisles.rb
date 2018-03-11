class CreateAisles < ActiveRecord::Migration
  def change
    create_table :aisles do |t|

      t.timestamps

    end
  end
end
