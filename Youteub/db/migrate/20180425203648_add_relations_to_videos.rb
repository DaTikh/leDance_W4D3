class AddRelationsToVideos < ActiveRecord::Migration[5.2]
  def change
    change_table :videos do |t|
      t.belongs_to :user, index: true, optional: true
      t.belongs_to :category, index: true, optional: true
    end
  end
end
