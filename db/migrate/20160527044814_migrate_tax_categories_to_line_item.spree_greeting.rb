# This migration comes from spree_greeting (originally 20160519085403)
class MigrateTaxCategoriesToLineItem < ActiveRecord::Migration
  def change
      Spree::LineItem.find_each do |line_item|
        next if line_item.variant.nil?
        next if line_item.variant.greeting.nil?
        next if line_item.greeting.nil?
        line_item.update_column(:tax_category_id, line_item.greeting.tax_category_id)
      end
    end
end
