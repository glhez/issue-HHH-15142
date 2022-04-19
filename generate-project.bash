#!/bin/bash

for jar in lib/binaries/*.jar ; do
  declare basename="${jar#lib/binaries/}"
  basename="${basename%.jar}"

  declare src="lib/sources/${basename}-sources.jar"

  declare xml=''
  if [[ -f "$src" ]]; then
    printf -v xml '<classpathentry kind="lib" path="%s" sourcepath="%s" />' "$jar" "$src"
  else
    printf -v xml '<classpathentry kind="lib" path="%s" />' "$jar"
  fi
  echo "$xml"
done
