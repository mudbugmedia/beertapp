Rails.application.config.untapped_api = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]
