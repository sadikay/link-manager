# CURRENT FILE :: lib/link/generator/redirectors/migration.rb
class CreateUrlRedirectors < ActiveRecord::Migration
  def self.up
    create_table :url_redirectors do |t|
      t.string   :long_url
      t.string   :sub_id
      t.integer  :redirected_count
      t.string   :code
      t.timestamps
    end
  end

  def self.down
    drop_table :url_redirectors
  end
end
