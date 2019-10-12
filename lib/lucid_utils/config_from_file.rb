# frozen_string_literal: true

module LucidUtils
  class ConfigFromFile
    # @param path [String]
    # @param env_prefix [String, nil] environment variables override values in the file
    #
    # @return [Hash]
    def call(path, env_prefix: nil)
      instance_eval(File.read(path)).tap do |result|
        raise TypeError, 'not and instance of Hash' unless result.is_a?(Hash)
      end.then do |config|
        env_prefix ? env_overrides(config, env_prefix) : config
      end
    end

    
    # @param config [Hash]
    # @param env_prefix [String]
    #
    # @return [Hash]
    private def env_overrides(config, env_prefix)
      config.each_with_object({}) do |(k, v), config|
        env_key = [env_prefix, k].join('_').upcase

        if v.is_a?(Hash)
          config[k] = env_overrides(v, env_key)
        else
          config[k] = ENV.fetch(env_key, v)
        end
      end
    end
  end
end
