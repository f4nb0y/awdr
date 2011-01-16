class Product < ActiveRecord::Base
  validates_numericality_of	:price
  validates_presence_of		:title, :descr, :image
  validates_uniqueness_of	:title
  validate			:sensible_price

protected

  def sensible_price
    errors.add(:price, 'must be greater than zero') unless ! price.nil? && price > 0.0
  end

end
