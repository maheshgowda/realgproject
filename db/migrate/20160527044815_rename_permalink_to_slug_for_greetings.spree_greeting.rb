# This migration comes from spree_greeting (originally 20160519090214)
class RenamePermalinkToSlugForGreetings < ActiveRecord::Migration
  def change
    rename_column :spree_greetings, :permalink, :slug
  end
end
