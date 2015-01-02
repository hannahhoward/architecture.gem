module Architecture
  class Move
    include Replicatable

    def initialize(source:, destination:)
      @origin = Entity.new(path: source)
      @clone = Entity.new(path: destination)
    end

    def call
      `mv #{origin.location} #{clone.location}`
    end
  end
end
