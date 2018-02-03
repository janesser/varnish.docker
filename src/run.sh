#!/bin/sh
varnishd -F -a $VARNISH_BIND -b $VARNISH_BACKEND
