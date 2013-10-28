class Activity < ActiveRecord::Base

  def self.create_activity(request, params)
    action = "#{params['controller']}-#{params['action']}"
    Activity.create(action: action,
                    request_remote_ip: request.remote_ip,
                    context: params.to_s,
                    http_user_agent: request.env['HTTP_USER_AGENT'],
                    http_host: request.env['HTTP_HOST'],
                    http_referer: request.env['HTTP_REFERER']
                    )
  end
end
