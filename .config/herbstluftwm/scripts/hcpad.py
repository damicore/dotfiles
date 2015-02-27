#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os, sys, getopt

hc = 'herbstclient'
step = 0


class Padding(object):
    """paddings are the four coordinates"""
    def __init__(self):
        self.l, self.u, self.r, self.d = self.get_hcp()
        return None

    def __str__(self):
        s = str(str(self.l) + ' ' + str(self.u) + ' ' + str(self.r) + ' ' + str(self.u))
        return s

    def inc(self, i = 10):
        self.l += i
        self.u += i
        self.r += i
        self.d += i
        os.popen(hc + ' pad 0 ' + str(self))
        return None

    def get_hcp(self):
        global hc
        out = os.popen(hc + ' list_padding')
        pads = out.read()
        res = pads.split()
        for i in range(len(res)):
            res[i] = int(res[i])
        res = tuple(res)
        return res


pad = Padding()

opts, args = getopt.getopt(sys.argv[1:], 'i:d:')
for opt, arg in opts:
    if opt == '-i':
        pad.inc(int(arg))
    elif opt == '-d':
        pad.inc(int(arg) * -1)
