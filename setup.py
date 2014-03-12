#!/usr/bin/env python
import os

def home(path):
    return os.path.expanduser(path)

print "linking .vim ..."
if(os.path.lexists(home('~/.vim'))):
    os.rename(home('~/.vim'), home('~/vim.bak'))
os.symlink(os.path.abspath('.'), home('~/.vim'))

print "linking .vimrc ..."
if(os.path.lexists(home('~/.vimrc'))):
    os.rename(home('~/.vimrc'), home('~/vimrc.bak'))
os.symlink(os.path.abspath('./vimrc'), home('~/.vimrc'))

print "done"
