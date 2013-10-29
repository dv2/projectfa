module Admin::ActivitiesHelper
  def model_count(model, date)
    unless model == Activity
      model.where("DATE(created_at) = ?", date).count
    else
      ip = Content.where(id: 2).first.value
      model.where("DATE(created_at) = ? AND request_remote_ip <> ?", date, ip).count
    end
  end
end
