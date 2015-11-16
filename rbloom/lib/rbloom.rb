require "digest/md5"

class Rbloom

  def initialize
    @bitmap = Array.new(1024)
  end

  def contains? word
    @bitmap.each_with_index { |entry, index|
      bit = bit_from(hash_word(word, index))
      return false if entry == 0 && bit == 1
    }
    true
  end

  def add word
    @bitmap = @bitmap.each_with_index.map { |entry, index|
     if entry == 1
       entry
     else
        bit_from(hash_word(word, index))
     end
    }
  end

  def bit_from hash
    hash.hexdigest.bytes.last[0]
  end

  def hash_word word, iteration
    Digest::MD5.new << "#{word}#{iteration}"
  end

end
