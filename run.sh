#!/bin/bash
#
latest="$(curl -I -m 10 -o /dev/null -s -w %{http_code} https://karili-generic.pkg.coding.net/remote/v1/yuyue.jar?version=default)"
echo $latest
if [$latest -eq '200']
then
	echo latest
	curl -L "https://karili-generic.pkg.coding.net/remote/v1/yuyue.jar?version=latest" -o yuyue.jar
else
	echo default
	curl -L "https://karili-generic.pkg.coding.net/remote/v1/yuyue.jar?version=default" -o yuyue.jar
fi
