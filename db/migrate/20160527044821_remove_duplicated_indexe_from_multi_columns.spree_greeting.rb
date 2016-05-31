# This migration comes from spree_greeting (originally 20160519092356)
class RemoveDuplicatedIndexeFromMultiColumns < ActiveRecord::Migration
  def change
    {
      'spree_greetings_promotion_rules' => 'spree_greeting_promotion_rules',
    }.each do |old_name, new_name|
      rename_table old_name, new_name
    end
  end
end
