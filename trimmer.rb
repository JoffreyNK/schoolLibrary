require_relative './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @nameable[0, 10]
  end
end
