class TaskTracker

    def initialize
        @tasks = []
    end

    

    def add(task)
        fail "Please input a task" if task.empty?
        @task_arr = @tasks.push(task)
        @task_list = @task_arr.join(", ")
    end

    def completed(task)
        #parameter should be a string 
        #and it should remove a selected string(task) from the list of tasks 
        @task_arr
        task_del = @task_arr.delete(task)
        @task_list = @task_arr.join(", ")
        return "Tasks: #{@task_list}"
        
    end

    def list
        #shows the list of tasks left to do
        return "Tasks: #{@task_list}"
    end
end
