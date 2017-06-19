module TestHelper
  def assert(fail_message)
    if yield
      print '.'
    else
      abort "\n\nThe following assertion FAILED: #{fail_message}"
    end
  end
end
