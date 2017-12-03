module ApplicationHelper
  def number_to_currency(number)
    "$#{line_item.item.price.to_f / 100}"
  end
end
