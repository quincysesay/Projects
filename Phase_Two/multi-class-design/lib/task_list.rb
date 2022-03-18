class TaskList

  def initialize
    @task = []
  end

  def add(task) # task is an instance of task
    @task << task
  end

  def all
    return @task.reject do |task|
      task.complete?
      end     #another way is by : return @task.reject(&:complete)
  end

  def complete
    return @task.select do |task|
      task.complete?
    end
  end
end