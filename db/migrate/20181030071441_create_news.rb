class CreateCoreNews < ActiveRecord::Migration[5.2]
  def change
    create_table :core_news do |t|
      t.string :title
      t.string :tags
      t.text :talking
      t.string :emb_video
      t.text :caption

      t.timestamps
    end
  end
end
