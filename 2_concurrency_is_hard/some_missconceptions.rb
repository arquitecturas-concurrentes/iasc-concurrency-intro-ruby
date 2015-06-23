java_import java.util.HashMap
java_import java.util.Hashtable
java_import java.util.Map
java_import java.util.concurrent.Executor
java_import java.util.concurrent.ExecutorService
java_import java.util.concurrent.Executors
java_import java.util.concurrent.TimeUnit

#Let's see some common missconceptions that show that concurrency is hard
describe 'concurrency is not easy' do 

  before { 
    puts "========Test Start Map is empty=========="

    @executor = Executors.newFixedThreadPool(20)
  }

  after {
    @executor.awaitTermination(2, TimeUnit::SECONDS)
    puts "========Test End. Map is #{@map}=========="
  }

  describe 'missconception 1: unsynchronized code always breaks' do
    it do
      @map = HashMap.new
      500.times do
        @executor.execute { @map["foo"] = 1  }
        @executor.execute { @map["foo"] = 2  }
        @executor.execute { @map["foo"] = 3  }
        @executor.execute { puts @map["foo"] }
      end  
    end       
  end


  describe 'missconception 2: unsynchronized code always breaks' do
    it do
      @map = Hashtable.new
      @map['foo'] = 0
      500.times do 
        @executor.execute do
          @map["foo"] += 1
          puts @map["foo"]
        end
        @executor.execute do
          @map["foo"] -= 1
          puts @map["foo"]
        end
      end
    end       
  end
end