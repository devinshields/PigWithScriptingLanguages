#!/usr/bin/python

import sys

for line in sys.stdin:
  if line:
    print 'Mapped line:', line.strip()
