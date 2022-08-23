#!/bin/bash

ip a show tun0 | egrep -o '([0-9]{1,3}[\.]){3}[0-9]{1,3}' | sed -n '1p'
