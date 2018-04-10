#!/bin/bash
if [ "$(lsof -i :9494 | wc -l)" -le 0 ]

then
	echo "Starting your browser stop/start server"
  cd /Users/kashyapm/engineering-onboarding/desktop-onboarding/mac/browser-startstop-server
	bundle exec ruby server.rb
else
	echo "You have the browser start/stop server running"
fi
