class CreateUrlRedirectionTable < ActiveRecord::Migration
  def change
    create_table :url_redirection do |t|
      # If we have long url for the url ll short we can save it
      t.string   :long_url, :null => false
      # we can save record of custom id for each url
      t.string   :sub_id,  :limit => 20
      t.integer  :redirected_count, :null => false, :default => 0
      t.string   :code,  :limit => 10, :null => false
      t.timestamps
    end

    # make sure for code is unique
    add_index :url_redirection, :code, :unique => true
  end
end
