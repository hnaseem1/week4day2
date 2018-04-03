class TodoList
  def initialize(name)
    @name = name
    @tasks = []
  end

  def add_task(description, due_date)
    @tasks << Task.new(description, due_date)
  end

  def todo_list
    @tasks
  end
end

class Task
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

list = TodoList.new("list")
planning = list.add_task("Plan trip", "3rd March 2017")
executing = list.add_task("buy tickets", "4th March 2017")
going = list.add_task("leave for airport", "7th March 2017")
p list.todo_list
