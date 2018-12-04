class Bob

  def self.hey(init)
    remark = init.strip
    if silence?(remark)
      "Fine. Be that way!"
    elsif yell_question?(remark)
      "Calm down, I know what I'm doing!"
    elsif question?(remark)
      "Sure."
    elsif yell?(remark)
      "Whoa, chill out!"
    else
      "Whatever."
    end
  end

  private

  def self.has_digits?(str)
    str.count("0-9") > 0
  end

  def self.question?(remark)
    remark.include?("?") && remark[-1] == "?"
  end

  def self.yell?(remark)
    unless has_digits?(remark[-1])
      remark == remark.upcase || (remark == remark.upcase && remark[-1] == "!")
    end
  end

  def self.yell_question?(remark)
    unless has_digits?(remark[0]) || remark.include?(":)")
      remark == remark.upcase && remark[-1] == "?"
    end
  end

  def self.silence?(remark)
    remark =~ /\A\s*\Z/
  end
end
