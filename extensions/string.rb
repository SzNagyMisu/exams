class String

  def singularize
    gsub(/s\z/, '') # enough for this project
  end

  def camelize
    gsub(/\_(\w)/, $1.to_s.upcase)
  end

  def underscore
    gsub(/\B[A-Z]/, '_\0').downcase
  end

end