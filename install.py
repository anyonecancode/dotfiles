#!/usr/bin/env python
import argparse
import logging
from os import mkdir
from os import rename
from os import symlink
from os.path import expanduser
from os.path import islink
from os.path import exists

VERSION = '0.1.0'
DESC = 'Creates symlinks from the home directory to the dotfiles repo. TODO: ZSH stuff'

FORMAT = '%(asctime)s %(levelname)s %(message)s'
logging.basicConfig(level=logging.INFO, format=FORMAT)

HOME = expanduser('~')
DIR = 'dotfiles'
BACKUPDIR = 'dotfiles_old'
files = ['vimrc', 'vim', 'zshrc', 'oh-my-zsh', 'irssi', 'tmux.conf', 'lynx.cfg', 'ackrc']

def main():
    parser = argparse.ArgumentParser(description=DESC)
    args = parser.parse_args()

    makeBackupDir()

    filesToBackup = {}
    filesToLink = {}

    for f in files:
      filePath = HOME + '/.' + f
      if not exists(filePath):
        filesToLink[f] = filePath
      else:
        if not islink(filePath):
          filesToLink[f] = filePath
          backupCurrent(f, filePath)

    if (len(filesToLink) > 0):
      fileList = ', .'.join(filesToLink)
      print 'These files are not yet symlinked to your dotfiles: .' + fileList
      print 'Moving them to ' + HOME + '/' + BACKUPDIR
      print 'Creating symlinks to version in your dotfiles repo'
      for key in filesToLink:
        createSymlink(key, filesToLink[key])

      print 'Done!'

    else:
      print 'All dotfiles already symlinked. Nothing to do.'

def makeBackupDir():
    backup = HOME + '/' + BACKUPDIR
    if not exists(backup):
      print 'Creating backup directory ' + backup
      mkdir(backup)

def backupCurrent(fileName, filePath):
    dest = HOME + '/' + BACKUPDIR + '/.' + fileName
    rename(filePath, dest)

def createSymlink(fileName, filePath):
  src = HOME + '/' + DIR + '/' + fileName
  dest = HOME + '/.' + fileName
  symlink(src, dest)

if __name__ == '__main__':
  main()
