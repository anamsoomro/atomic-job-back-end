class User < ApplicationRecord

  has_many :user_tasks 
  has_many :jobs
  has_many :job_tasks, through: :jobs
  has_many :notes, through: :jobs
  has_many :resumes, through: :jobs

end
