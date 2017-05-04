module Naivechain
  Block = Struct.new(:index, :previous_hash, :timestamp, :data, :hash) do
    def to_json(*a)
      to_h.to_json(*a)
    end
  end
end
