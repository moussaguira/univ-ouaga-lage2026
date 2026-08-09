# -*- coding: utf-8 -*-
import re
import sys

from flopy.utils.get_modflow import cli_main

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(cli_main())
