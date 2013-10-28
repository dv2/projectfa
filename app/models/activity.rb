class Activity < ActiveRecord::Base
  belongs_to :user

  def self.create_activity(request, params, current_user = nil)
    action = "#{params['controller']}-#{params['action']}"
    user_id = current_user ? current_user.id : nil

    Activity.create(action: action,
                    request_remote_ip: request.remote_ip,
                    context: params.to_s,
                    http_user_agent: request.env['HTTP_USER_AGENT'],
                    http_host: request.env['HTTP_HOST'],
                    http_referer: request.env['HTTP_REFERER'],
                    user_id: user_id
                    )
  end
end
