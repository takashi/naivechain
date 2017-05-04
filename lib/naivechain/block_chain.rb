require 'date'

module Naivechain
  BlockChain = Struct.new(:blocks) do
    def add(next_block)
      blocks.push(next_block)
    end

    def latest
      blocks.last
    end

    def create_and_add_next(data)
      timestamp = DateTime.now.strftime('%s')
      next_hash = HashGenerator.new(latest.index, latest.hash, timestamp, data).generate
      next_block = Block.new(latest.index + 1, latest.hash, timestamp, data, next_hash)
      add(next_block)
      next_block
    end
  end
end
