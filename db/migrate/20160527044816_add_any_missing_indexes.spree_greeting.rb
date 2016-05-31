# This migration comes from spree_greeting (originally 20160519090510)
class AddAnyMissingIndexes < ActiveRecord::Migration
 def change
   add_index :spree_greeting_option_types, :option_type_id
   add_index :spree_greeting_option_types, :greeting_id
   add_index :spree_greetings_taxons, :position
 end
end