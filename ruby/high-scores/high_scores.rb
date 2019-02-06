class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores[-1]
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.sort do |a,b|
      -(a <=> b)
    end
  end

end
