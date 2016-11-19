class CreateTasks < ActiveRecord::Migration
  def change

    create_table :projects, {:id =>false} do |t|
      t.string :id
      t.string :project_name
      t.string :customer_id
      t.datetime :created_at
      t.datetime :updated_at
    end
    create_table :tasks,{:id =>false} do |t|
      t.string :id
      t.string :project_id
      t.string :user_id
      t.string :task_name
      t.datetime :created_at
      t.datetime :updated_at
    end
    create_table :task_entries,{:id =>false} do |t|
      t.string :id
      t.string :task_id
      t.string :duration
      t.string :note
      t.datetime :start_time
      t.datetime :created_at
      t.datetime :updated_at
    end
    create_table :users,{:id =>false} do |t|
      t.string :id
      t.string :username
      t.string :password
      t.string :email
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
