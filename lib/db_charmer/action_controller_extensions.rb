module DbCharmer
  module ActionControllerExtensions
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def force_master_db(*models)
        models_array = case models
          when String, Symbol
            [models]
          when Array
            models
          when nil
            #use all models
          else
            raise ArgumentError, "You should specify correct list of models"
        end.map { |m| m.to_s.camelize.constantize }

        old_proxies = {}
        append_around_filter do |c,a|
          begin
            models_array.each do |model|
              model.db_charmer_connection_level += 1
              old_proxies[model.object_id] = model.db_charmer_connection_proxy
              model.switch_connection_to(nil, DbCharmer.migration_connections_should_exist?)
            end
            a.call
          ensure
            models_array.each do |model|
              model.switch_connection_to(old_proxies[model.object_id], DbCharmer.migration_connections_should_exist?)
              model.db_charmer_connection_level -= 1
            end
          end
        end
      end
    end
  end

end
