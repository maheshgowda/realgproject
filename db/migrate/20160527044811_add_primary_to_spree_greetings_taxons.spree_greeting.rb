# This migration comes from spree_greeting (originally 20160519074151)
class AddPrimaryToSpreeGreetingsTaxons < ActiveRecord::Migration
  def change
    add_column :spree_greetings_taxons, :id, :primary_key
  end
end
