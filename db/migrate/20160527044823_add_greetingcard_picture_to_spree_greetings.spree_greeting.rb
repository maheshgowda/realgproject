# This migration comes from spree_greeting (originally 20160524052611)
class AddGreetingcardPictureToSpreeGreetings < ActiveRecord::Migration
  def change
	  add_attachment :spree_greetings, :greetingcard_picture
  end
end
