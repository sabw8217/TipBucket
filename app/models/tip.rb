class Tip < ActiveRecord::Base
  TIME_ZONE = ActiveSupport::TimeZone['Pacific Time (US & Canada)']

  def occurred_at_local
    occurred_at.in_time_zone(TIME_ZONE)
  end

  def occurred_at_local=(t)
    self.occurred_at = TIME_ZONE.parse(t)
  end
end
