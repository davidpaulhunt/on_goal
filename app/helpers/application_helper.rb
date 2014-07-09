module ApplicationHelper

  def format_date(date)
    date.strftime("%m/%d/%Y at %I:%M%p")
  end

end
