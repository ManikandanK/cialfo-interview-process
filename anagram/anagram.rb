class String

  def anagrams?(string)

    return false if (!string.is_a?(String) || (self.strip == "" || string.strip == "")||(self.length != string.length))

    self.split(//).sort == string.split(//).sort

  end

end