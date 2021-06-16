#!/bin/sh

for a in $(seq 1 1000); do
	mkdir -p "src-$a"
	for b in $(seq 1 5); do
		cat >src-$a/manifest-$b.yaml <<_EOF_
apiVersion: v1
kind: ConfigMap
metadata:
  name: cm-dir$a-num$b
_EOF_
	done
done
