#!/usr/bin/env python3

import shutil
import os

COLUMNS, LINES = shutil.get_terminal_size()
SEARCHRESULTS = int((LINES - 9) / 4)
__version__='0.3'


LID = COLUMNS - 2
BAR = COLUMNS - 18
print('\n\033[m' + '╭' + '─' * LID + '╮' + '\n\n' + '╰' + '─' * LID + '╯')
searchq = input('\033[2A\r' + '│' + '\033[01;38;5;32m Ｇ\033[38;5;160mｏ\033[38;5;215mｏ\033[38;5;32mｇ\033[38;5;34mｌ\033[38;5;160mｅ\033[38;5;15m：\033[m' + '\033[07m' + ' ' * BAR + '\033[m ' + '│' + '\r' + '│' + '\033[01;38;5;32m Ｇ\033[38;5;160mｏ\033[38;5;215mｏ\033[38;5;32mｇ\033[38;5;34mｌ\033[38;5;160mｅ\033[38;5;15m：\033[m' + '\033[07m ')
print('\033[m\n')
print('\033[m     Showing results for: "\033[01;38;5;51m' + searchq + '\033[m"')
os.system('googler --colors BmcgxX -n ' + str(SEARCHRESULTS) + ' ' + searchq)