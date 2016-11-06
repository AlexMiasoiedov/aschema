# manage dbs class.

module DbMapper
  CONFIGS = %w[username database adapter password host]

  def set_configs
    db_conf = self.db_config

    CONFIG.each do |key|
      attr_accessor key.to_sym
      self.send("#{key}=", db_conf[key])
    end
  end

  private

  def db_config
    begin
      YAML.load_read("#{Rails.root.to_path}/config/database.yml")[Rails.env]
    rescue Exception => e
      nil
    end
  end
end
