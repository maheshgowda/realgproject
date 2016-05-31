# This migration comes from spree_greeting (originally 20160519091339)
class AddShippingCategoryToShippingMethodsAndGreetings < ActiveRecord::Migration
  def up
    default_category = Spree::ShippingCategory.first
    default_category ||= Spree::ShippingCategory.create!(:name => "Default")

    Spree::ShippingMethod.all.each do |method|
      method.shipping_categories << default_category if method.shipping_categories.blank?
    end

    Spree::Greeting.where(shipping_category_id: nil).update_all(shipping_category_id: default_category.id)
  end

  def down
  end
end
