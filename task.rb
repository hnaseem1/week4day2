class TodoList
  @@tasks = []
  def initialize(name)
    @name = name
  end

  def add_task
    @@tasks << Task.new(@description, @due_date)
  end

  def todo_list
    @@tasks
  end
end

class Task < TodoList
  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  def description
    @description
  end

  def due_date
    @due_date
  end
end


planning = Task.new("Plan trip", "3rd March 2017")
executing = Task.new("buy tickets", "4th March 2017")
going = Task.new("leave for airport", "7th March 2017")
list = TodoList.new("list")
planning.add_task
executing.add_task
going.add_task
p list.todo_list
