class CreateShortenedUrl2 < ActiveRecord::Migration[5.2]
  def change
    create_table :shortened_urls do |t|
      t.integer :user_id
      t.string :long_url
      t.string :short_url 
    end
      add_index :shortened_urls, :user_id, unique 
  end
end
