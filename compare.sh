#!/bin/sh

go build ./cmd/fmt
go build ./cmd/os
let fmt="$(nm fmt | wc -l | tr -d ' ')"
let os="$(nm os | wc -l | tr -d ' ')"
let fmtsz="$(ls -sk fmt | awk '{print $1}')"
let ossz="$(ls -sk os | awk '{print $1}')"
echo Symbol counts: fmt $fmt, os $os
echo fmt has $(echo "scale=2\n ($fmt.0 / $os.0 - 1) * 100" | bc -l)% more symbols
echo Hello, World file sizes: fmt ${fmtsz}k, os ${ossz}k
echo fmt is $(echo "scale=2\n ($fmtsz.0 / $ossz.0 - 1) * 100" | bc -l)% larger on disk
