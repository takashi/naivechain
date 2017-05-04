module Naivachain
  NewBlockValidator = Struct.new(:next_block, :latest_block) do
    def validate
      return false unless correct_index? && correct_hash? && correct_properties?
      true
    end

    def correct_index?
      next_block.index == latest_block.index + 1
    end

    def correct_hash?
      next_block.previous_hash == latest_block.hash
    end

    def correct_properties?
      generated_hash = HashGenerator.new(next_block.index, next_block.hash, next_block.timestamp, next_block.data)
      generated_hash == next_block.hash
    end
  end
end
