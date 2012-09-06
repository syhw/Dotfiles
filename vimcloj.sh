#!/bin/bash

# script to launch the Nailgun server of a Leiningen project and launch Vim

LEIN_CLASSPATH=$(lein classpath)
java -cp "$LEIN_CLASSPATH" vimclojure.nailgun.NGServer 127.0.0.1 > /dev/null 2>&1 & 
pid=$!
echo "started vimclojure.nailgun.NGServer with pid: $pid "
vim +"let vimclojure#WantNailgun = 1" $1
kill $pid
echo "killed vimclojure.nailgun.NGServer with pid: $pid "

