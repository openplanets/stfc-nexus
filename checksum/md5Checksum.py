#!/usr/bin/env python
# -*- coding: utf-8 -*-

import hashlib, sys

def md5sum(filename):
    md5 = hashlib.md5()
    with open(filename, 'rb') as f: 
        for chunk in iter(lambda: f.read(64 * md5.block_size), b''): 
             md5.update(chunk)
    return md5.hexdigest()

def writeOutChecksum(fileOut, checksum, identifier):

     with open(fileOut, 'w') as f:
         loc = 0
         if identifier.rfind("/") >= 0:
             loc = identifier.rfind("/")
         elif identifier.rfind("\\") >= 0:
             loc = identifier.rfind("\\")
             
         f.write(identifier[loc + 1:] + "=" + checksum + "\n")
         f.close()
       

def main(arg):
   checksum = md5sum(arg[0])
   # write out using the filename as an identifier so that the checksum and file can be matched up later on
   writeOutChecksum(arg[1], checksum, arg[0])
   
if __name__ == '__main__':
    main(sys.argv[1:])
