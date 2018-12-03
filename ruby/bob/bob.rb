class Bob
  def self.hey(remark)
    if remark == remark.upcase && remark[-1] == "?"
        "Calm down, I know what I'm doing!"
    elsif remark == remark.upcase && remark[-1] == "!"
      "Whoa, chill out!"
    elsif remark == remark.upcase
      "Whoa, chill out!" 
    elsif remark[-1] == "?"
      "Sure."
    else
      "Whatever."
    end
  end
end
