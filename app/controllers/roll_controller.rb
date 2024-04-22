class RollController < ApplicationController
  def homepage
    render({ :template => "roll_templates/homepage" })
  end

  def two_six
    @rolls = []

    # Rolling the dice 2 times and storing each result
    2.times do
      die = rand(1..6)  # Includes 6 in the range
      @rolls.push(die)
    end

    # Rendering the template once after all rolls are determined
    render({ :template => "roll_templates/two_six" })
  end

def two_ten
  @rolls = []

  2.times do
    die = rand(1..10)
    @rolls.push(die)
  end

   render({ :template => "roll_templates/two_ten" })
   end

  def one_twenty
    @rolls = []
    
    1.times do
      die = rand(1...20)
      @rolls.push(die)
  end
  render({ :template => "roll_templates/one_twenty"})
end

def five_four
  @rolls = []

  5.times do
    die = rand(1...4)
    @rolls.push(die)
  end
  render({ :template => "roll_templates/five_four"})
end

def roll_dice
  @number_of_dice = params[:number_of_dice].to_i
  @number_of_sides = params[:number_of_sides].to_i
  @rolls = Array.new(@number_of_dice) { rand(1..@number_of_sides) }

  render({ template: "roll_templates/roll_dice" })
end

end
