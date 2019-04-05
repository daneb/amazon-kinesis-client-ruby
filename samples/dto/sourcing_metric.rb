module DTO
    class SourcingMetric
        attr_reader :instanceId, :name, :value

        def initialize(instanceId, payload)
            @instanceId = instanceId
            @name = payload[:label]
            @value = '%.2f' % payload[:datapoints][0][:average]
        end
    end
end
