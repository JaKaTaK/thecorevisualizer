#!/usr/bin/python

def getIndent(line):
  for i in range(len(line)):
    if line[i] != "\t":
       return i
  return 0

knownKeys = {}

prevIndent = 0
groupName = None
hasIconOrText = False
hasCommands = False
key = None
for line in open("hotkeys.coffee"):
  x = line.strip().split(":")
  if len(x) == 2 and x[0] == "hotkeyCode":
    key = x[1].strip()[1:-1]
    knownKeys[key] = "???"

for line in open("../visualizer/others/Standard.SC2Hotkeys"):
  line = line.strip()
  if "=" not in line:
    continue
  name,value = line.split("=")
  if name in knownKeys:
    knownKeys[name] = value
#    print name, value, "in cham"
#  else:
#    print name, value, "unknown"

for line in open("../visualizer/others/TheCore Lite.SC2Hotkeys"):
  line = line.strip()
  if "=" not in line:
    continue
  name, value = line.split("=")
  if name in knownKeys and knownKeys != "???":
    knownKeys[name] = "+++"

for name, value in knownKeys.iteritems():
  if value != "???" and value != "+++":
    print name + "=" + value
