#!/usr/bin/env bash

function run_command(){
   java -jar ~/workspace/app_analysis/FlowDroid/soot-infoflow-cmd/target/soot-infoflow-cmd-jar-with-dependencies.jar -p ~/Library/Android/sdk/platforms/android-28/android.jar -s ~/workspace/app_analysis/FlowDroid/soot-infoflow-android/SourcesAndSinks.txt -process-multiple-dex -a $1 -o ~/workspace/app_analysis/FlowDroid/FDA/$1.xml
}

function travFolder(){
  #echo "travFolder"
  flist=`ls $1`
  cd $1
  #echo $flist
  for f in $flist
  do
    if test -d $f
    then
      travFolder $f
    else
      run_command $f
    fi
  done
  cd ../
}

travFolder $1
