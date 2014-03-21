class Cake < ActiveRecord::Base
  validates :name, :eggs, :flour, :sugar, :oil, presence: true

  def recipe_sentence
   return "#{name}, #{eggs} eggs, #{flour} ounces of flour, #{sugar} cups of sugar, #{oil} ounces of oil. #{comments}"
  end
end
