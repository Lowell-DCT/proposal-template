#!/usr/bin/env python
import subprocess
import re

# Show an example of pulling metadata from a Lowell DCT proposal PDF file

filename = 'lowell-prop.pdf'
rawtxt = subprocess.Popen("mdimport -d2 " + filename, shell=True, 
                          stdout=subprocess.PIPE, stderr=subprocess.STDOUT).stdout.read()

MDtag = 'DCTPMD'

def process_tags(input):
    return {a[0]:process_tags(a[1].strip()) if a[1].strip().startswith(MDtag + '-') else a[1].strip() 
            for a in re.findall(MDtag + '-([^-]*)-START(.*?)' + MDtag + r"-\1", input)}

metadata = process_tags(rawtxt)

print(metadata)