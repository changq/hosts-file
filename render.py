#!/usr/bin/env python
import sys
from mako.template import Template


if __name__ == '__main__':
    mytemplate = Template(filename=sys.argv[1])
    f = open('/etc/hosts', 'wb')
    f.write(mytemplate.render())
