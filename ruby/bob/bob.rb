class Bob
  def self.hey(remark)
    if yell_question?(remark)
      "Calm down, I know what I'm doing!"
    elsif yell?(remark)
      "Whoa, chill out!"
    elsif question?(remark)
      "Sure."
    else
      "Whatever."
    end
  end

  def self.yell?(remark)
    remark == remark.upcase || remark == remark.upcase && remark[-1] == "!"
  end

  def self.yell_question?(remark)
    remark == remark.upcase && remark[-1] == "?"
  end

  def self.question?(remark)
    remark[-1] == "?"
  end
end
