# This migration comes from spree_greeting (originally 20160519074258)
class ChangeMetaDescriptionOnSpreeGreetingsToText < ActiveRecord::Migration
  def change
    change_column :spree_greetings, :meta_description, :text, :limit => nil
  end
end
