class Coffeeshop
  attr_accessor :name, :menu, :orders

  def initialize(name, menu, orders=[])
    @name = name
    @menu = menu
    @orders = orders
  end

  def orders
    p @orders
  end

  def add_order(name)
    menu_item = Array.new
    @menu.each do |el|
      menu_item.push(el[:item])
    end
    if menu_item.include?(name)
      @orders.push(name)
      p "Order added !"
    else
      p "This item is unavailable, sorry!"
    end
  end

  def fulfill_order
    item = @orders[0]
    p @orders.empty? ? "No orders to fulfill!" : "The #{item} is ready!"
    @orders.shift
  end

  def cheapest_item
    cheap_item = @menu.sort_by { |item| item[:price] }.first
    p cheap_item[:item]
  end

  def drinks_only
    drinks = Array.new
    @menu.each do |el|
      if el[:type] == "drink"
        drinks.push(el[:item])
      end
    end
    p drinks
  end

end

cs1 = Coffeeshop.new("CS1 Tokyo Coffee", [{:item => "hot chocolate", :type => "drink", :price => 12}, {:item => "cinnamon roll", :type => "food", :price => 25}, {:item => "iced coffee", :type => "drink", :price => 12}, {:item => "vanilla chai latte", :type => "drink", :price => 32}, {:item => "lemon tea", :type => "drink", :price => 5}], [])

cs1.add_order("hot cocoa") # "Sorry, this item is unavailable."
# A Little Spice coffee shop does not sell hot cocoa

cs1.add_order("cinnamon roll") #  "Order added!"
cs1.add_order("iced coffee") # "Order added!"
cs1.orders # ["cinnamon roll", "iced coffee"]
# All current orders are listed.

cs1.fulfill_order # "The cinnamon roll is ready!"
cs1.fulfill_order #"The iced coffee is ready!"
cs1.orders # []
# All orders have been fulfilled

cs1.cheapest_item # "lemon tea"
cs1.drinks_only # ["hot chocolate", "lemon tea", "iced coffee", "vanilla chai latte"]

