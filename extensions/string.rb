class String

  def singularize
    gsub(/s\z/, '') # enough for this project
  end

  def pluralize
    "#{self}s"
  end

  def camelize
    split('_').map(&:capitalize).join
  end

  def underscore
    gsub(/\B[A-Z]/, '_\0').downcase
  end

end