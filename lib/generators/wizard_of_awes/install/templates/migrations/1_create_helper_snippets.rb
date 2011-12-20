class CreateHelperSnippets < ActiveRecord::Migration
  def self.up
    create_table :helper_snippets do |t|
      t.string :slug
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :helper_snippets
  end
end