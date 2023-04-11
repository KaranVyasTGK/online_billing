module ApplicationHelper
  def badge_color(status)
    case status
      when "due"
        return "badge text-bg-info text-uppercase"
      when "paid"
        return "badge text-bg-success text-uppercase"
      when "over_due"
        return "badge text-bg-danger text-uppercase"
      else
        return "badge text-bg-secondary text-uppercase"
      end
  end
end
