# do it
class Car
  attr_accessor :make, :year, :color
  attr_reader :wheels
  attr_writer :doors

  def initialize(options = {})
    self.make = options[:make] || 'Volvo'
    self.year = (options[:year] || 2007).to_i
    self.color = options[:color] || 'unknown'
    @wheels = 4
  end

  def self.colors
    %w(red black blue green)
  end

  def full_name
    "#{year} #{make} (#{color})"
  end
end
