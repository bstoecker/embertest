class StaffingImpact
  attr_reader :id, :name
  def initialize(args)
    @id = args.fetch(:id)
    @name = args.fetch(:name)
  end
end