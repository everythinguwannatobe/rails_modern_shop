Rails.application.config.generators do |g|
  g.orm :active_record, primary_key_type: :uuid
  g.test_framework :rspec,
    view_specs:       false,
    helper_specs:     false,
    routing_specs:    false
end
