This contains a test setup for a flask server that is auto-updated from this repo, running in a docker container.

- The flask server is started using supervisord
- supervisord also runs an update script every minute, pulling changes from the repo

You need to provide environment variables, see env.example (which should be copied to .env)