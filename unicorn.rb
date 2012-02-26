app_dir = "/home/sites/votacao/current"
worker_processes 1
working_directory app_dir

# listen on both a Unix domain socket and a TCP port,
# we use a shorter backlog for quicker failover when busy
listen "/tmp/votacao.socket", :backlog => 64

# nuke workers after 30 seconds instead of 60 seconds (the default)
timeout 30

# feel free to point this anywhere accessible on the filesystem
user 'root', 'root'
shared_path = "/home/sites/votacao/shared"
pid "#{shared_path}/pids/unicorn.pid"
stderr_path "#{shared_path}/log/unicorn.stderr.log"
stdout_path "#{shared_path}/log/unicorn.stdout.log"