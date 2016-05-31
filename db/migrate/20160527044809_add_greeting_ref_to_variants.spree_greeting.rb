# This migration comes from spree_greeting (originally 20160519073338)
class AddGreetingRefToVariants < ActiveRecord::Migration
  def change
    add_reference :spree_variants, :greeting, index: true, :name => 'index_spree_variants_on_greeting_id'
  end
end
