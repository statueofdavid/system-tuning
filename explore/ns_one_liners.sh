#!/bin/bash

## meddling with unshare, uts, and hostname
## source: http://ifeanyi.co/posts/linux-namespaces-part-1/#what-is-it-good-for
# in one terminal, execute this:
ls -l /proc/$$/ns
# open another terminal and repeat.  you should see the same output
# according to the article, this is because every process
# must belong to a namespace (ns).  If you do not specify the ns, 
# then Linux, by default, adds the process to the default ns-es.
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# in the second terminal run:
hostname
# this should return the computer's global hostname
# now run the following:
sudo unshare -u bash
ls -l /proc/$$/ns
# mostly the output remains the same 
# but pay attention to the uts ns... notice it has a diff id
# basically the '-u bash' is telling the 'unshare' program to create
# a new UTS NS
# After running those commands in the second shell, change its hostname
# like this:
hostname <insert a new hostname here>
# once completed re-run the hostname command: first in the second terminal
# and then in the first terminal.
# you should observe that they no longer share hostnames
`
