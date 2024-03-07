jobs = {
    "new_post_notification_job" => {
        "cron" => "* * * * *",
        "queue" => "notification",
        "class" => "NewPostsNotificationJob",
        "active_job" => true
    }
}

Sidekiq::Cron::Job.load_from_hash(jobs)