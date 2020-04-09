
anam = User.create(username: "AnamSoomro")
paul = User.create(username: "PaulHoffart")

job1 = Job.create(title: "Anam Job 1 at Company 1", company: "Company 1", status: "apply", interview: "false", location: "Houston", user_id: anam.id, url: "https://beckgroup.applicantpro.com/jobs/1331191.html")
job2 = Job.create(title: "Anam Job 2 at Company 2", company: "Company 2", status: "apply", interview: "false", location: "Houston", user_id: anam.id, url: "https://beckgroup.applicantpro.com/jobs/1357860.html")
job3 = Job.create(title: "Anam Job 3 at Company 1", company: "Company 1", status: "follow-up", interview: "true", location: "Houston", user_id: anam.id, url: "https://beckgroup.applicantpro.com/jobs/1357867.html" )
job4 = Job.create(title: "Paul Job 4 at Company 1", company: "Company 1", status: "closed", interview: "false", location: "Houston", user_id: paul.id, url: "https://beckgroup.applicantpro.com/jobs/1339552.html" )

resume1 = Resume.create(url: "Job 1 Resume", job_id: job1.id)
resume2 = Resume.create(url: "Job 2 Resume", job_id: job2.id)
resume3 = Resume.create(url: "Job 3 Resume", job_id: job3.id)
resume4 = Resume.create(url: "Job 4 Resume", job_id: job4.id)

note1 = Note.create(content:"some notes regarding job 1 by Anam", job_id: job1.id)
note2 = Note.create(content:"some notes regarding job 4 by Paul", job_id: job4.id)
note3 = Note.create(content:"some notes regarding Job 3 by Anam", job_id: job3.id)
note4 = Note.create(content:"some notes regarding Job 4 by Paul", job_id: job4.id)
note5 = Note.create(content:"some notes regarding Job 4 by Paul", job_id: job4.id)
note6 = Note.create(content:"some notes regarding Job 2 by Anam", job_id: job2.id)
note7 = Note.create(content:"some notes regarding Job 3 by Anam", job_id: job3.id)

user_task1 = UserTask.create(item: "hackathon on May 3", closed: true, user_id: anam.id)
user_task2 = UserTask.create(item: "meetup on May 6th", closed: false, user_id: paul.id)
user_task3 = UserTask.create(item: "follow up with career coach", closed: false, user_id: paul.id)

job_task1 = JobTask.create(item: "apply on linkedin", closed: "false", job_id: job1.id)
job_task2 = JobTask.create(item: "follow up recruiter", closed: "true", job_id: job2.id)
job_task3 = JobTask.create(item: "reach out to alumni", closed: "false", job_id: job1.id)
job_task4 = JobTask.create(item: "call george for a referral ", closed: "false", job_id: job3.id)
job_task5 = JobTask.create(item: "let coach know", closed: "true", job_id: job3.id)
job_task6 = JobTask.create(item: "update resume", closed: "false", job_id: job4.id)




