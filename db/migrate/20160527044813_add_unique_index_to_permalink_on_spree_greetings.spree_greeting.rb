# This migration comes from spree_greeting (originally 20160519074656)
class AddUniqueIndexToPermalinkOnSpreeGreetings < ActiveRecord::Migration
  def change
     add_index "spree_greetings", ["permalink"], :name => "permalink_idx_unique", :unique => true
  end
end
