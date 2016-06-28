class Bob

  def hey(remark)

    len = remark.length
    last_char = remark[len-1]

    if has_meaning?(remark)
      if remark.upcase == remark && has_letters?(remark)
        return "Whoa, chill out!"
      elsif last_char == "?"
        return "Sure."
      else
        return "Whatever."
      end
    else
      return "Fine. Be that way!"
    end

  end

  def has_meaning?(remark)
    ('1'..'z').include?(remark.strip[0])
  end

  def has_letters?(remark)
    letters = false
    remark.each_char do |x|
      if ('A'..'z').include?(x)
        letters = true
      end
    end
    letters
  end

end
