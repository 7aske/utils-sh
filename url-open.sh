#!/bin/sh

exo-open --launch WebBrowser https://www.google.com/search?q=$(xclip -o -sel c)
