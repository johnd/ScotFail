#!/bin/env ruby
# This script should be called from cron every time you want the
# bot to check for new messages to retweet. For @scotfail I have
# it run every 15 minutes, as there's several other things running
# on that host that hit the Twitter API. If rate-limiting isn't a
# concern you could easily run it more often for a more responsive
# bot.

require 'rubygems'
require 'bundler/setup'

require 'config/config' # This creates the 'CONFIG' array which we
                        # use to get configuration options from.
                        # You could rewrite it to populate it from
                        # the environment instead - I just hard-code
                        # the data because I'm lazy.

require 'lib/scotfail'

results = Scotfail.new

results.retweet unless results.tweets.count == 0