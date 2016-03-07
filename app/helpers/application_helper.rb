module ApplicationHelper
  def alert_class(type)
    { 'notice' => 'success', 'failure' => 'error' }[type]
  end
end
