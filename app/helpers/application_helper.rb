module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Chirpy"
    end
  end
end
