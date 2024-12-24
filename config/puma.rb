threads_count = ENV.fetch("RAILS_MAX_THREADS", 5)
threads threads_count, threads_count

environment ENV.fetch("RAILS_ENV", "production")

bind "tcp://0.0.0.0:3000"

pidfile ENV["PIDFILE"] if ENV["PIDFILE"]

stdout_redirect "log/puma.stdout.log", "log/puma.stderr.log", true

plugin :tmp_restart
