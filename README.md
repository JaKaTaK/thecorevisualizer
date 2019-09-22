# The Core Visualizer

[See the live demo.](http://IvanVolosyuk.github.io/thecorevisualizer/visualizer)

This is an interactive demo for StarCraft 2 hotkey layouts, designed around [The Core](http://www.teamliquid.net/forum/viewmessage.php?topic_id=341878). Written in CoffeeScript with CoffeeCup and Stylus.

The code is very ugly. Mistakes were made. There is no documentation. Contributions are welcome but not recommended at this stage.

Icons are from [SC2 Armory](http://sc2armory.com/), [StarCraft Wiki](http://starcraft.wikia.com/wiki/StarCraft_II), and [Liquidpedia](http://wiki.teamliquid.net/starcraft2/Main_Page) and are presumably &copy; Blizzard.

## Running

To run this visualizer locally, you can use python3

```bash
$ python -m http.server
```
or python2
```bash
$ python -m SimpleHTTPServer
```
and click [this link](http://localhost:8000/visualizer).

Or you can figure out how to run the ``server.coffee`` file. You can't just open the index.html page in a browser because ajax doesn't work well in some browser when fetching local files.


## Maintenance

Hotkey files can be updated by updataing the ``visualizer/hotkeys`` submodule.

```bash
$ cd visualizer/hotkeys
$ git pull
$ cd ../../
$ git add visualizer/hotkeys
$ git commit -m "Updates hotkeys to version vX.Y.Z"
$ git push
```

Keyboard behavior and icons can be updated by editing the ``src/hotkeys.coffee`` file. This file creates two data structures: ``exports.commandCards`` and ``exports.raceCards``. They formatted as simple nested lists in the following format:

```coffee
exports.raceCards =
	Protoss:
		units:
			Probe:
				icon: "probe.jpg"
				displayText: "Probe"
				commands:
					inherit: ['unit.movement', 'unit.combat']
					Cancel:
						displayText: 'Cancel'
						icon: 'Cancel.png'
						on: -> @buildCard = null
						if: -> @buildCard
					BuildBasic:
						displayText: 'Build Basic'
						hotkeyCode: 'ProtossBuild/Probe'
						icon: 'Build.png'
						on: -> @buildCard = 'basic'
						if: -> not @buildCard
```

This indicates that the first entry in the raceCards list is Protoss and the first entry in its unit list is the Probe. The probe has the ``icon`` name (of the file in the visualizer/icons folder) and ``displayText`` attributes set and has its own list of commands. A unit can ``inherit`` groups of commands by group name. It can also list new commands by name. When a unit is selected or a command is issued on a unit, all of its inherited and personal commands are displayed if the ``if`` value is true. When a command is used, the ``on`` command is called.

Above, the Probe has a new Cancel command  that uses the ``Cancel.png`` icon. The Cancel command is only showed ``if`` the buildCard attribute is not true. The Probe also defines a new BuildBasic command  When the button is clicked ``on``, the ``buildCard`` attribute is set to ``null`` on the currently selected probe unit.

The Probe also has a BuildBasic command that is mapped to the ``ProtossBuild/Probe`` hotkey code (loaded from the current hotkey file) and uses the Build.png icon. It is shown so long as the ``buildCard`` attribute is not true. When it is clicked, it sets ``buildCard = 'basic'`` which causes a different set of icons to show.

To add new commands or units just make a new entry into the appropriate list and set all the values correctly. Everything else should be automatic. All units must have ``icon``, and ``commands`` defined. All commands must ``icon`` defined. All other attributes are optional. If ``displayText`` is not found, the unit/command name will be used instead. If ``on`` is not defined then nothing happens when the command is used. If ``if`` is not defined then the command is always shown.

After you have updated the ``hotkeys.coffee`` file you need to recompile the coffee script and commit the changes. To do that you need to make sure to install [node.js](http://nodejs.org/download/)

The compilation works only on Linux for me:

```bash
$ NODE_PATH=src node coffeecup --output visualizer src/index.coffee
$ git add src/hotkeys.coffee visualizer/index.html
$ git commit -m "Fixed hotkey file entries...."
$ git push
```
