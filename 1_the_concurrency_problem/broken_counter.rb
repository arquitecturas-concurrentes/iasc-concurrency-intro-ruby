#It's pretty obvious this will break
i = 0
1000.times { Thread.new { i += 1 }   }
