require 'digest/sha2'

module Naivechain
  HashGenerator = Struct.new(:index, :hash, :timestamp, :data) do
    def generate
      Digest::SHA256.hexdigest(key)
    end

    def key
      index.to_s + hash + timestamp.to_s + data
    end
  end
end
