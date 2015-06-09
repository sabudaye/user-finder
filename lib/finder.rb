require 'user'

class Finder
  def initialize(data)
    @data = data
  end

  def search(conditions)
    data = @data
    data.keep_if do |user|
      keep = true
      conditions.each do |cond|
        if cond.last.is_a?(Range)
          keep &= user.send(cond.first).between?(cond.last.min, cond.last.max)
        else
          keep &= user.send(cond.first).eql?(cond.last)
        end
      end
      keep
    end
  end
end