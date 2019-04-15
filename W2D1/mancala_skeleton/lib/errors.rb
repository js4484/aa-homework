class InvalidStartCupError < StandardError
    def initialize
        super("Invalid starting cup")
    end
end

class StartingCupIsEmptyError < StandardError
    def initialize
        super("Starting cup is empty")
    end
end

