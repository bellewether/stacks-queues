# A company has six hiring positions with more people wanting jobs than the
# number of available positions.  The company managers decide in order to give
# more people an opportunity to make money; they will allow people to work in
# three-month intervals. The first five people on the waiting list will be hired
# in the order that they are on the waiting list.  The first six people will
# keep these positions for three months.  At the end of three months, the
# manager will roll a dice to determine the number of people who will lose their
# jobs. The company will use the policy of last-hired-first-fired.  For example,
# if the dice roll is 3, the last 3 people hired will lose their jobs to the
# first 3 people on the waiting list. People losing their jobs will be placed on
# the back of the waiting list in the order that they are fired. This process
# will continue for every three-month interval.

require './Stack.rb'
require './Queue.rb'


class Company

  def initialize(num_of_positions = 6, num_waiting = 15)
    @waiting_list = Queue.new
    num_waiting.times do |i|
      @waiting_list.enqueue("Person #{i+1}")
    end

    @company_jobs = Stack.new
    num_of_positions.times do
      @company_jobs.push(@waiting_list.dequeue)
    end

  end

  def num_ppl_fired
    fired_ppl = rand(1..6)
    return fired_ppl
  end

  def fire
    @num_ppl = num_ppl_fired
    @num_ppl.times do
      @waiting_list.enqueue(@company_jobs.pop)
      return @waiting_list
    end
  end

  def hire
    @num_ppl.times do
      @company_jobs.push(@waiting_list.dequeue)
      return @company_jobs
    end
  end

end

c = Company.new
c.fire
c.hire
