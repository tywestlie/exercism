class HighScores
  attr_reader :scores, :personal_best

  def initialize(scores)
    @scores = scores
    @personal_best = []
  end

  def latest
    scores[-1]
  end

  def personal_best
    scores.max
  end

  def personal_top
    top = scores.sort do |a,b|
      if scores.length
      -(a <=> b)
      end
    end
    top.shift(3)
  end

  def report
    if scores.max == scores[-1]
      return "Your latest score was #{scores[-1]}. That's your personal best!"
    else
      return "Your latest score was #{scores[-1]}. That's #{scores.max - scores[-1]} short of your personal best!"
   end
  end

end
