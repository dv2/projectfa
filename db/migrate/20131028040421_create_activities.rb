class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :action
      t.string :request_remote_ip
      t.string :context
      t.string :http_user_agent
      t.string :http_host
      t.string :http_referer

      t.timestamps
    end
  end
end
