# This migration comes from spree_greeting (originally 20160519092536)
class AddIdColumnToEarlierHabtmTable < ActiveRecord::Migration
  def change
     add_column :spree_greeting_promotion_rules, :id, :primary_key
  end
end
