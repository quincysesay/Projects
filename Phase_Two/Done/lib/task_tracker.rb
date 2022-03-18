class TodoList
  def initialize
    @task = []
  end

  def list
    @task
  end

  def add(task)
    @task << task
  end 

  def complete(task)
    fail "No such Entry(Task) exists." unless @task.include? task
    @task.delete(task)
  end
  
end