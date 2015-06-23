class Table
  def initialize(hash)
    @hash = hash
    @lock = Monitor.new
  end

  def put(key, value)
    @lock.synchronize do
      @hash[key] = value
    end
  end

  def get(key)
     @lock.synchronize do
       @hash[key]
     end
  end

  def delete(key)
    @lock.synchronize do
      @hash.delete key
    end
  end

  def accum(key, delta)
    @lock.synchronize do 
      v = get(key) + delta
      puts ''
      put(key, v)
    end
  end
end


def concurrent_test(count)
  table = Table.new({counter: 0})
  (1..count).map do |it|
    if it.even?
      Thread.new do
        table.put(:counter, 1)
      end
    else
      Thread.new do
        v = table.get(:counter)
        table.put(:counter, 2)
      end
    end
  end.each(&:join)
  table
end



def concurrent_test2(count)
  table = Table.new({counter: 0})
  (1..count).map do |it|
    if it.even?
      Thread.new do
        table.accum(:counter, 1)
      end
    else
      Thread.new do
        table.accum(:counter, -1)
      end
    end
  end.each(&:join)
  table
end

