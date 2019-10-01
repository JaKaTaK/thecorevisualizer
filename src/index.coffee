require = process.mainModule.require

hotkeys = require 'hotkeys.coffee'
commandCards = hotkeys.commandCards
raceCards = hotkeys.raceCards

keyboards = require 'keyboards.coffee'
keyCodeMaps = keyboards.keyCodeMaps
keyboards = keyboards.keyboards

fnJSON = (o) -> JSON.stringify o, (k,v) ->
	if typeof v is 'function' then v.toString() else v

loadHotkeys =(keyText)->
	map = {}
	for line in keyText.split '\n'
		continue unless m = line.match /([\w\/]+)=([\w\+,]+)/
		map[m[1]] = m[2].split(',')
	map


commandDisplayMap =
	HellionTank: 'Hellbat'
commandDisplayName =(command)->
	if m = command.match /(ControlGroup|Camera)\w+(\d)/
		m[2]
	else
		commandDisplayMap[command] or command.replace /([a-z])([A-Z])/g, "$1 $2"

commandClassMap = {}
commandClass =(command)->
	if m = command.match /((ControlGroup|Camera)\w+)\d/
		m[1]
	else
		commandClassMap[command] or command

String.prototype.repeat = (n)-> if n then new Array( n + 1 ).join(this) else ''
String.prototype.trim = -> @replace /(^\s+|\s+$)/g, ''

touch =->text '&nbsp;'

classKeyMap =
	Apostrophe: '\''
	SemiColon: ';'
	Slash: '/'
	Comma: ','
	Grave: '`'
	BracketClose: ']'
	BracketOpen: '['
	CapsLock: 'CAPS'
	Control: 'CTRL'
	Shift: 'SHIFT'
	Alt: 'ALT'
	Enter:'ENTER'
	Windows: 'WIN'
	Menu: 'MENU'
	Space: 'SPACE'
	Period: '.'
	Minus: '-'
	Equals: '='
	Backslash: '\\'
	Tab: 'TAB'
	Escape: 'ESC'

germanClassKeyMap =
	Grave: 'ö'
	Apostrophe: 'ä'
	SemiColon: 'ü'
	BracketOpen: 'ß'
	BracketClose: '´'
	Equals: '+'
	

keyClassMap = {}
keyClassMap[v] = k for k, v of classKeyMap
keyClassMap[v] = k for k, v of germanClassKeyMap
keyClass = (key)-> if voidKey key then 'void' else keyClassMap[(key or '').split(' ')[0]] or (key or '').trim()


indented = (fn)->(args..., o={})->
	out = fn(args..., o)
	out = out.join('\n') if typeof out is 'object'
	out = out.replace /\n/g, "\n#{'\t'.repeat o.indent}"
	out

sizeClass = (size)-> size.toString().replace /\./, '-'
keySizes = [0.5, 1, 1.5, 1.75, 2, 2.25, 2.5, 2.75, 6]
keySizeStyles = indented -> "key-size-width '#{sizeClass size}', #{size}" for size in keySizes

unitStyles = indented ->
	icons = []
	for raceName, race of raceCards
		for kind, units of race
			for unitName, unit of units
				icons.push "unit-class '#{unitName}', '#{unit.icon}'"
	icons

raceClass = (raceName)-> raceName

eachRace = indented (fn)-> fn(race) for race of raceCards
commandIcons = indented ->
	icons = []
	for raceName, race of raceCards
		for kind, units of race
			for unitName, unit of units
				for name, command of unit.commands
					icons.push "command-icon '#{name}', '#{command.icon or "#{name}.png"}'"
	for cat, commands of commandCards.unit
		for name, command of commands
			icons.push "command-icon '#{name}', '#{command.icon or "#{name}.png"}'" if command.icon
	icons

preloadUrls =-> ((new Array).concat ("url('icons/#{command}.png')" for command, icon of commandIconMap), ("url('icons/#{command.toLowerCase()}.jpg')" for command, icon of commandUnitIconMap)).join(' ')

doctype 5
html ->
	head ->
		styles = """

border-radius()
	-webkit-border-radius arguments
	-moz-border-radius arguments
	border-radius arguments
selectable(yes)
	unless yes
		-webkit-touch-callout none;
		-webkit-user-select none;
		-khtml-user-select none;
		-moz-user-select none;
		-ms-user-select none;
		user-select none;
transition()
	transition arguments
	-webkit-transition arguments
	-moz-transition arguments
	-o-transition arguments
	-ms-transition arguments

animation()
	animation arguments
	-webkit-animation arguments
	-moz-animation arguments
	-o-animation arguments
	-ms-animation arguments

transform()
	transform arguments
	-webkit-transform arguments
	-moz-transform arguments
	-o-transform arguments
	-ms-transform arguments

box-shadow()
	box-shadow arguments
	-webkit-box-shadow arguments
	-moz-box-shadow arguments
	-o-box-shadow arguments
	-ms-box-shadow arguments
text-shadow()
	text-shadow arguments
	-webkit-text-shadow arguments
	-moz-text-shadow arguments
	-o-text-shadow arguments
	-ms-text-shadow arguments

uiColor = #18c6c6
uiGlowColor = #16b6b6

fade(color, alpha)
	rgba(red(color),green(color),blue(color),alpha)

body:after
	content #{dopreloadUrls if false}
	display none

body
	font-family 'Helvetica', sans-serif

body
	background-color black
	margin 0
	padding 0 0 0 20px
	color white
	text-shadow white 0 0 5px
	background-image url('gray-background.png')
	background-position 202px 0px
	.left-strip
		background-image url('teal-left.png')
		width 202px
		height 100%
		position absolute
		left 0
		top 0
		z-index -10
.grid
	width 100%
	height 100%
	position fixed
	z-index -1
	// background-image url('hex_green.png')
	background-size 80px
	opacity 0.1
.title
	font-size 100px
	color white
	text-shadow white
	font-family Helvetica
	position fixed
	z-index -5
	right 10px
	bottom 10px
	opacity 1
	font-size 45px
	font-weight lighter
	background-image url('the-core-alpha.png')
	height 65px
	width 300px
	padding-top 300px
	text-align center
	background-repeat no-repeat
	background-size 300px
	.the
		color #ADADAD
		text-shadow #ADADAD 0 0 10px
	.braces
		color uiColor
		text-shadow uiGlowColor 0 0 10px
.container
	width 920px
	padding 10px
	margin auto

.tutorial-overlay
	position fixed
	top 0
	left 0
	width 100%
	height 100%
	z-index 499
	background-color fade(black, 70%)

.tutorial
	width 700px
	height 500px
	padding 50px
	padding-top 10px
	border 4px solid fade(uiColor, 50%)
	overflow auto
	position absolute
	left 50%
	top 50%
	margin-left -400px
	margin-top -350px
	z-index 500
	border-radius 25px
	box-shadow fade(uiColor, 30%) 0 0 10px, inset fade(uiColor, 30%) 0 0 10px
	background-color fade(black, 70%)
	color white
	text-shadow fade(white, 30%) 0 0 5px
	a
		cursor pointer
		display inline-block
		margin 10px
		padding 10px
		box-shadow fade(white, 30%) 0 0 10px, inset fade(white, 30%) 0 0 10px
		background-color transparent
		transition background-color 0.5s
		&:hover
			box-shadow fade(uiColor, 50%) 0 0 10px, inset fade(uiColor, 50%) 0 0 10px
		&:active,&.selected
			background fade(uiColor, 30%)
			box-shadow fade(uiColor, 50%) 0 0 10px, inset fade(uiColor, 50%) 0 0 10px

.footer
	width 65%
	margin-top 10px
	margin 10px
	background-color fade(uiColor, 15%)
	border 4px solid fade(uiColor, 30%)
	box-shadow fade(uiColor, 50%) 0px 0px 10px
	border-radius 10px
	padding 10px
	a
		cursor pointer
		margin-right 20px
		text-decoration none
		color white !important
		text-shadow white 0 0 20px
		&:hover
			text-shadow white 0 0 5px


.keyboard
	height 400px
	overflow visible
	position relative
	.inner
		width 900px
		position relative
		transition left 1s
	.hand
		transition opacity 1s, transform 1s, left 1s
		background-image url("icons/hand.png")
		position absolute
		z-index 300
		background-size 65%
		pointer-events none
		background-repeat no-repeat
		animation pulse-opacity 4s alternate linear infinite
		width 483px
		height 299px

	&.display-left
		.inner
			left 330px
			.mouse
				left -260px
		.hand
			left 230px
			top 123px
			transform scaleX(-1) rotate(-9deg)
	&.display-right
		.inner
			left -300px
			.mouse
				left 1000px
		.hand
			left 189px
			top 123px
			transform rotate(-9deg)
	&.display-full
		.inner
			left 0
			.mouse
				opacity 0
		.hand
			opacity 0
			display none


key-color = uiColor
key-width = 60px
key-height = key-width
key-border-width = 2px
key-margin = 2px
key-inner-height = key-height - key-margin * 2 - key-border-width * 2
key-border-radius = 3px

cap-margin = key-width * 0.2

.mouse
	border-radius 50px

	border key-border-width*2 solid fade(key-color, 50%)
	box-shadow fade(key-color, 30%) 0 0 10px, inset fade(key-color, 30%) 0 0 10px
	background-color transparent

	width 150px
	height 200px
	padding 25px
	position absolute
	top 100px
	opacity 1
	transition opacity 1s
	.key-ForwardMouseButton,.key-BackMouseButton
		position absolute
		left -20px
		&.key-size-0-5
			.map
				width key-width
				overflow visible
				left 0 - key-width * 0.5
	.key-ForwardMouseButton
		top 60px
	.key-BackMouseButton
		top 140px

.row
	height key-height
	float left
	width 100%
	&.row-0-5
		height key-width * 0.5

@keyframes pulse-background
	0%
		background-color fade(lighten(key-color, 10%), 5%)
	100%
		background-color fade(darken(key-color, 10%), 30%)

@keyframes pulse-opacity
	0%
		opacity 0
	100%
		opacity 0.1
.key
	float left
	position relative

	&.key-void
		background-color transparent !important
		box-shadow none !important
		border-color transparent !important

	border-radius key-border-radius
	margin key-margin

	cursor pointer
	selectable false

	border key-border-width solid fade(key-color, 50%)
	box-shadow fade(key-color, 30%) 0 0 5px, inset fade(key-color, 30%) 0 0 5px
	background-color transparent

	.overlay
		position absolute
		top -4px
		left -4px
		opacity 0
		z-index 200
		height key-inner-height
		border-radius key-border-radius
		transition opacity 0.3s, top 0.3s, left 0.3s
		&.black
			background-color fade(white, 50%)
			box-shadow fade(white, 30%) 0 0 15px, inset fade(white, 30%) 0 0 15px
		&.white
			background-color fade(uiColor, 50%)
			box-shadow fade(uiColor, 50%) 0 0 15px, inset fade(uiColor, 50%) 0 0 15px
	&:hover
		.overlay.white
			opacity 1
	&.selected
		.overlay.black
			top 0
			left 0
			opacity 1
		.overlay.white
			top 0
			left 0
			opacity 0
		.cap,.maps
			top 0
			left 0
	&.key-Control, &.key-Shift, &.key-Alt
		animation pulse-background 3s alternate linear infinite
		&:hover, &:active, &.selected
			animation none

	height key-inner-height
	key-size-width(size, mult)
		&.key-size-{size}
			key-inner-width = (key-width * mult) - key-margin * 2 - key-border-width * 2
			width key-inner-width
			.map
				width key-inner-width
			.overlay
				width key-inner-width
	#{keySizeStyles indent: 1}

	.cap
		margin-top 15px
		text-align center
		text-shadow black 0 0 1px
		font-weight bold
	.maps
		position absolute
		top -4px
		left -4px
		transition top 0.3s, left 0.3s
	map()
		overflow hidden
		max-height key-height - key-margin * 2
		margin-top 2px
		font-size 12px
	.map
		map()
		position absolute
		top 0
		left 0
		&.map-command
			z-index 1
			background-color fade(white, 60%)
			box-shadow uiColor 0 0 15px, inset uiColor 0 0 7px
			text-shadow black 0 0 1px
		&.map-global
			z-index 10
			background-color fade(uiColor, 30%)
			box-shadow uiColor 0 0 7px, inset uiColor 0 0 7px
			color white
			text-shadow white 0 0 1px

		command-icon(command, icon)
			&.map-{command}
				background-image url('icons/'+icon)
				background-size contain
				background-repeat no-repeat
				border-radius key-border-radius
				height key-inner-height
				margin-top 0
				text-indent -9999px
				z-index 100
		#{commandIcons indent: 2}


		&.command-ControlGroupRecall,&.command-ControlGroupAppend,&.command-ControlGroupAssign,&.command-CameraSave,&.command-CameraView
			text-align center
			font-size 20px
			&:before, &:after
				font-size 15px
				display block
				map()
			&.unit-icon
				text-indent 0
		&.command-ControlGroupRecall,&.command-ControlGroupAppend,&.command-ControlGroupAssign
			background-color fade(lightgreen, 30%)
			box-shadow lightgreen 0 0 7px, inset lightgreen 0 0 7px
			&:before
				content 'Group'
		&.command-CameraSave,&.command-CameraView
			background-color fade(lightblue, 30%)
			box-shadow lightblue 0 0 7px, inset lightblue 0 0 7px
			&:before
				content 'Camera'
		&.command-CameraSave
			&:after
				content 'SET'
				background-color fade(lightgreen, 30%)
				box-shadow lightgreen 0 0 7px, inset lightgreen 0 0 7px
		&.command-ControlGroupRecall
			background-color fade(lightgreen, 30%)
			box-shadow lightgreen 0 0 7px, inset lightgreen 0 0 7px
			&:after
				background-color
				background-color fade(lightgreen, 30%)
				box-shadow lightgreen 0 0 7px, inset lightgreen 0 0 7px
		&.command-ControlGroupAppend
			&:after
				content 'ADD'
				background-color fade(lightblue, 30%)
				box-shadow lightblue 0 0 7px, inset lightblue 0 0 7px
		&.command-ControlGroupAssign
			&:after
				content 'SET'
				background-color fade(pink, 30%)
				box-shadow pink 0 0 7px, inset pink 0 0 7px

.settings-bar
	height 60px

	.setting
		float right
		select, label
			display block


.unit-icon
	icon-width = 50px
	icon-height = 50px
	float left
	margin 2px
	margin-bottom 10px
	border-radius 3px
	width icon-width
	height icon-height
	background-size icon-width icon-height
	background-repeat no-repeat

	text-indent -9999px

	cursor pointer
	border-width(border-width)
		border-width border-width
		border-style solid
		background-position 0 - border-width
		width icon-width - border-width * 2
		height icon-height - border-width * 2
	position relative

	hover-transition(time)
		transition width time, height time, background-size time, top time, margin-bottom time

	hover-transition 0.5s

	hover-size = 65px
	&.selected, &:hover
		width hover-size
		height hover-size
		background-size hover-size hover-size
		margin-bottom 0px
	&.selected, &.selected:hover
		top -15px
	&:hover
		top -7.5px
		hover-transition 0.2s


	unit-class(unit, icon)
		&.unit-{unit}
			background-image url('icons/' + icon)
	#{unitStyles indent: 1}
Zerg-color = #8218c6
Protoss-color = #e6e240
Terran-color = #c61818

.races-commands
	display block
	position relative
	height 225px

.race-commands
	position absolute
	top 0
	left 0
	width 1100px
	transition opacity 1s
	opacity 1
	z-index 10
	&.hide
		opacity 0
		z-index 0
	.unit-commands
		float left
		clear both


	race-unit-icon-color(race, color)
		&.race-{race}
			.unit-icon
				box-shadow color 0 0 7px, inset color 0 0 7px
	#{eachRace ((race)-> "race-unit-icon-color '#{race}', #{race}-color"), indent: 1}

	.unit-commands
		margin-top 10px
		padding 5px
		border-radius 15px
		h3
			margin 0
			color black

	race-background-color(race, color)
		&.race-{race} .unit-commands
			background-color fade(color, 15%)
			border 4px solid fade(color, 30%)
			box-shadow fade(color, 50%) 0px 0px 10px
		&.race-{race}
			h3
				color fade(color, 50%)
				text-shadow fade(color, 30%) 0px 0px 5px

	#{eachRace ((race)-> "race-background-color '#{race}', #{race}-color"), indent: 1}


.races-icons
	margin-top -60px
	margin-bottom 5px
	height 75px
	display block
	h3
		float left
		color fade(white, 70%)
		text-shadow fade(white, 70%) 0 0 1px
		font-weight normal
	.race-icon
		transition background-color 0.5s, border-color 0.5s
		width 75px
		height 75px
		float left
		border-width 4px
		border-style solid
		border-color transparent
		border-radius 7px

		cursor pointer
		text-indent -9999px
		race-color(race, color)
			&.race-{race}
				&:hover, &.selected
					border 4px solid fade(color, 30%)
					box-shadow fade(color, 50%) 0px 0px 10px, inset fade(color, 50%) 0px 0px 10px
				&.selected
					background-color fade(color, 15%)
		#{eachRace ((race)-> "race-color '#{race}', #{race}-color"), indent: 2}

		background-repeat no-repeat
		background-size contain
		background-color transparent
		race-background(race)
			&.race-{race}
				background-image url('icons/'+race+'.png')
		#{eachRace ((race)-> "race-background '#{race}'"), indent: 2}

.messages
	position absolute
	top 20px
	right 20px
	text-align right
	color white
	text-shadow fade(white,30%) 0 0 10px
	z-index 400
	width 400px
	height 400px
	pointer-events none
	h3
		transition top 3s, height 3s
		height 40px
		margin 0
		padding 0
		&.hide
			top -200px
			height 0px

		position relative

			"""

		stylus styles

		script src: 'lib/zepto.min.js'
		script src: 'lib/zepto.cookie.min.js'
		script src: 'lib/coffeecup.js'
		script '''
// Google AnalyticsX
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-57073194-1', 'github.io');
ga('send', 'pageview');
'''


	blankRow = (row)-> Object.keys(row).length is 0

	voidKey = (key)-> key and key.match /_\d+/
	formatKeyCap =(key)->
		return '&nbsp;' if voidKey key
		key.split(' ')[0]

	renderKeyboard = (keyboard)->
		keyboard or= @keyboard
		text
		div '.mouse', ->
			button =(which, size)->
				div ".#{which.toLowerCase()}-button.key.key-size-#{sizeClass size}.key-#{which}MouseButton", ->
						div '.overlay.black', touch
						div '.overlay.white', ->
							div '.cap', ->
						div '.maps', ->
			button which, size for which, size of {Left:1, Middle:0.5,Right:1,Forward:0.5,Back:0.5}
		for row in keyboard
			div ".row.#{'row-0-5' if blankRow row}", ->
				for key, size of row
					size = 1 if typeof size is 'string'
					div ".key.key-#{keyClass key}.key-size-#{sizeClass size}", ->
						div '.overlay.black', touch
						div '.overlay.white', ->
							div '.cap', -> formatKeyCap key
						div '.maps', ->
	containerTemplate = ->
		div '.keyboard', ->
			div '.hand', ->
			div '.inner', ->
			# renderKeyboard keyboards['US QWERTY']
		div '.settings-bar', ->
			div '.setting', ->
				label 'Keyboard Layout:'
				select '.keyboard-layout', ->
					first = yes
					for keyboard of keyboards
						option value: keyboard, selected: (first and first = no), -> keyboard
			div '.setting', ->
				label 'Hotkeys:'
				select '.hotkey-file', ->
					first = yes
					for name of TheCore.currentHotkeysFiles
						option value: name, selected: (first and first = no), -> name
			div '.setting', ->
				label 'Display:'
				select '.display-side', ->
					first = yes
					for value, side of {right: 'Right Side', left: 'Left Side', full: 'Full Keyboard'}
						option value: value, selected: (first and first = no), -> side

		div '.races-icons', ->
			for race of TheCore.raceCards
				div ".race-icon.race-#{raceClass race}", -> race
			h3 'Select a unit or building to see commands'


		div '.races-commands', ->
			for race, kinds of TheCore.raceCards
				div ".race-commands.race-#{raceClass race}", ->
					for kind, units of kinds
						div ".unit-commands.kind-#{kind}", ->
							h3 -> "#{race} #{kind}"
							for unitName, unit of units
								div ".unit-icon.unit-#{unitName}", -> unit.displayText or unitName

	body ->
		div '.grid', ->
		div '.left-strip', ->
		div '.title', ->
			span '.braces', -> '{&nbsp;&nbsp;'
			span '.the', -> 'The'
			span '.core', -> 'Core'
			span '.braces', -> '&nbsp;&nbsp;}'
		div '.messages', ->
		div '.container', ->
		div '.tutorial-overlay', ->
		div '.tutorial', ->
			img src: 'logo-strip.png'
			h1 style: 'text-align:center', -> 'Interactive Demo'
			p -> ''' The Core is a highly-optimized alternative hotkey layout for StarCraft 2.
				Instead of looking at a list of keys, use this tool to put your hands on the keyboard and see what does what.
			'''
			h3 'The Tilt'
			img src:'tilt.jpg'
			p -> 'The Core is designed to be used with your off-hand on the side of your keyboard closest to your mouse, with a tilted keyboard to keep your wrist straight.'
			img src:'pull-keys.jpg'
			p -> 'You\'ll need to press Shift, Ctrl and Shift-Ctrl a lot, so you may want to remove the keys between Alt and Ctrl.'
			a '.select-corelite', -> "If you're on a laptop or can't tilt your keyboard, try The Core Lite instead."
			h3 'There are left- and right-handed variants, and layouts for each race as well as a generic Random layout.'
			p -> 'Are you right- or left-handed?'
			a '.select-hand.hand-Right', -> 'Right-Handed'
			a '.select-hand.hand-Left', -> 'Left-Handed'

			p -> 'What is your main class? (Every layout is designed to allow off-racing. If you play all three equally, choose Random.)'
			a '.select-race.race-zerg', -> 'Zerg'
			a '.select-race.race-terran', -> 'Terran'
			a '.select-race.race-protoss', -> 'Protoss'
			a '.select-race.race-random', -> 'Random'

			p -> '(Don\'t worry, this is easy to change later.)'


			coffeescript ->

				window.TheCore = TheCore =
					version: '5.0'
					layoutCodeToDisplayName:(code)->
						"The Core #{code} #{@version} (#{@layoutRaces[code[0]]} #{@layoutSides[code[1]]}-Handed  #{@layoutSizes[code[2]]})"
					layoutCodeToFileName:(code)->
						"TheCore_#{code} #{@version}.SC2Hotkeys"

				parts =
					layoutRaces: 'Random'.split ' '
					layoutSides: 'Right Left'.split ' '
					layoutSizes: 'Medium'.split ' '
          layoutComplexities: ['', 'Plus']
				for kind, ones of parts
					TheCore[kind] = {}
					for each in ones
						TheCore[kind][each[0]] = each

				[races, sides, sizes, complexities] = (v for k,v of [TheCore.layoutRaces, TheCore.layoutSides, TheCore.layoutSizes, TheCore.layoutComplexities])
				TheCore.layoutCodes = $.map ("#{race}#{side}#{size}#{complexity}" for size of sizes for race of races for side of sides for complexity of complexities), (a)-> $.map a, (n)-> n

				$ ->
					hand = race = null
					layoutSize = 'medium'
          layoutComplexity = ''
					dismiss =->
						c =(s)-> s[0].toUpperCase()
						code = "#{c race}#{c hand}#{c layoutSize}#{c layoutComplexity}"
						$('select.hotkey-file').val(TheCore.layoutCodeToDisplayName(code)).change()
						$('.tutorial-overlay').click()

					$('.select-corelite').click ->
						$('select.hotkey-file').val("The Core Lite").change()
						$('.tutorial-overlay').click()

					$('.select-hand').click ->
						hand = @className.match(/hand-(\w+)/)[1]
						$('.tutorial .select-hand').removeClass 'selected'
						$(this).addClass 'selected'
						if race?
							do dismiss
					$('.select-race').click ->
						race = @className.match(/race-(\w+)/)?[1]
						$('.tutorial .select-race').removeClass 'selected'
						$(this).addClass 'selected'
						if hand?
							do dismiss
		div '.footer', ->
			a '.show-tutorial', -> 'Show Tutorial'
			a href:'https://github.com/JaKaTaK/thecorevisualizer', target: 'blank', -> 'About'
			coffeescript ->
				$('.footer .show-tutorial').on 'click', -> $('.tutorial,.tutorial-overlay').show()

		script "window.containerTemplate = #{containerTemplate.toString()};"
		script "window.keyboards = #{JSON.stringify(keyboards)};"
		script "window.keyCodeMaps = #{JSON.stringify(keyCodeMaps)};"
		script "window.keyboardTemplate = #{renderKeyboard.toString()};"
		script "window.touch = #{touch.toString()};"
		script "window.blankRow = #{blankRow.toString()};"
		script "window.formatKeyCap = #{formatKeyCap.toString()};"
		script "window.sizeClass = #{sizeClass.toString()};"
		script "window.raceClass = #{raceClass.toString()};"
		script "window.keyClassMap = #{JSON.stringify(keyClassMap)};"
		script "window.voidKey = #{voidKey.toString()};"
		script "window.keyClass = #{keyClass.toString()};"
		script "window.commandDisplayMap = #{JSON.stringify(commandDisplayMap)};"
		script "window.commandDisplayName = #{commandDisplayName.toString()};"
		script "window.commandClassMap = #{JSON.stringify(commandClassMap)};"
		script "window.commandClass = #{commandClass.toString()};"
		script "window.loadHotkeys = #{loadHotkeys.toString()};"
		script "TheCore.raceCards = #{fnJSON(raceCards)};"
		script "TheCore.commandCards = #{fnJSON(commandCards)};"
		coffeescript -> window.nextTick =(cb)-> setTimeout cb, 0
		coffeescript ->

			TheCore.hotkeysForKeyboard = {}

			TheCore.loadTheCoreForKeyboard =(keyboard, cb)->
				n = null
				TheCore.currentKeyboard = keyboard

				if (TheCore.currentHotkeysFiles = TheCore.hotkeysForKeyboard[keyboard])
					nextTick renderContainer
					return

				hotkeysFiles = TheCore.currentHotkeysFiles = TheCore.hotkeysForKeyboard[keyboard] = {}

				loadHotkeysFile = (name, path)->
					hotkeysFiles[name] = null
					n += 1
					$.get path, (file)->
						hotkeysFiles[name] = file
						console.log 'loaded hotkey file',name,path,file.length
						unless n -= 1
							do renderContainer
				n = 0

				prefix = "hotkeys/build/" + keyboard + '/'

				for code in TheCore.layoutCodes
					path = "#{prefix}#{TheCore.layoutCodeToFileName(code)}"
					loadHotkeysFile TheCore.layoutCodeToDisplayName(code), path

				# if keyboard is 'US Qwerty'
				# 	loadHotkeysFile "The Core Lite", 'others/TheCore Lite.SC2Hotkeys'
				# 	loadHotkeysFile "The Chameleon", 'others/Chameleon 2.0.SC2Hotkeys'
				# 	loadHotkeysFile "HotS Standard", 'others/Standard.SC2Hotkeys'


			TheCore.currentKeyboard = if (val = $.fn.cookie('keyboard-layout-val')) in "US Qwerty.US Dvorak.French Azerty.Germany.US Colemak.Latin America and Spain.Portugal.QGMLWB.QGMLWY.Scandinavia.Switzerland.UK Colemak.UK Qwerty".split '.'
				val
			else
				'US Qwerty'
			console.log 'Loading keyboard', TheCore.currentKeyboard
			TheCore.loadTheCoreForKeyboard TheCore.currentKeyboard





		coffeescript -> String.prototype.trim = -> @replace /(^\s+|\s+$)/g, ''

		coffeescript ->
			window.scanHotkeys =->
				out = ""
				for race, kinds of TheCore.raceCards
					for kind, units of kinds
						for unitName, unit of units
							for cname, details of unit.commands
								code = details.hotkeyCode or cname
								if code.match /\//
									if not TheCore.currentHotkeys[code]
										if TheCore.currentHotkeys[code.split('/')[0]]
											console.log "#{code.split('/')[0]} should be #{code}", it: TheCore.currentHotkeys[code.split('/')[0]]
											out += "#{code}=#{TheCore.currentHotkeys[code.split('/')[0]].join(',')}\n"
				console.log 'additions', out

			window.renderContainer =->
				currentKeyboard = TheCore.currentKeyboard
				hotkeysFiles = TheCore.currentHotkeysFiles

				loadHotkeys (v for k, v of hotkeysFiles)[0]
				$('.container').html coffeecup.render(containerTemplate)

				$('select.keyboard-layout').val(currentKeyboard)

				$('.keyboard .inner').html coffeecup.render(keyboardTemplate, keyboard: keyboards[currentKeyboard], hardcode: {touch, sizeClass, blankRow, formatKeyCap})

				currentMods = []

				currentGroup = []
				currentUnit = null

				TheCore.currentHotkeys = currentHotkeys = {}

				globalState =
					currentUnit: null
					controlGroup: (null for i in [0..9])

				sendMessage =(text, kind)->
					if text
						message = $ "<h3 class='#{kind}'>#{text}</h3>"
						$('.messages').append message
						setTimeout (->message.addClass 'hide'), 1000
						setTimeout (->message.remove()), 5000

				class Unit
					constructor:(@race, @kind, @name)->
						@icon = $(".unit-icon.unit-#{@name}")
						@card = TheCore.raceCards[@race][@kind][@name]
						@commands = @card.commands
						if @commands.inherit
							for path in @commands.inherit
								path = path.split '.'
								inherited = TheCore.commandCards
								while path.length
									inherited = inherited[path.shift()]
								@commands[k] ?= v for k,v of inherited

						for name, command of @commands
							for key in ['if','on']
								command[key] = eval("(#{command[key]})") if typeof command[key] is 'string'

					@fromIcon: ($icon)->
						race = (($icon.closest '.race-commands')[0].className.match /race-commands race-(\w+)/)[1]
						kind = (($icon.closest '.unit-commands')[0].className.match /unit-commands kind-(\w+)/)[1]
						unit = (($icon.closest '.unit-icon')[0].className.match /unit-icon unit-(\w+)/)[1]

						new Unit race, kind, unit
					globalState: globalState

				showMapsForUnit =(unit)->
					for name, command of unit.commands
						if typeof command.if is 'function'
							if not command.if.call(unit)
								continue
						unless keys = currentHotkeys[command.hotkeyCode or name]
							continue
						for key in keys
							[mods..., key] = key.split '+'
							continue if mods and (no in (mod in mods for mod in currentMods) or no in (mod in currentMods for mod in mods))
							$maps = $(".keyboard .key.key-#{keyClass key} .maps")
							$map = $maps.append("<div class='map map-command map-#{name} command-#{commandClass name}'>#{command.displayText or name}</div>")

				showGlobalMaps =->
					for name, command of TheCore.commandCards.global
						if command.if
							command.if = eval("(#{command.if})") if typeof command.if is 'string'
							if not command.if.call(globalState)
								continue
						unless keys = currentHotkeys[command.hotkeyCode or name]
							continue
						for key in keys
							[mods..., key] = key.split '+'
							continue if mods and (no in (mod in mods for mod in currentMods) or no in (mod in currentMods for mod in mods))
							continue if name.match /^Observe|Leader|Toggle|Replay|Stats/
							$maps = $(".keyboard .key.key-#{keyClass key} .maps")
							if (m = name.match /ControlGroup\w+(\d)/)
								unit = globalState.controlGroup[m[1]]

							$map = $maps.append("<div class='map map-global map-#{name} command-#{commandClass name} #{"unit-icon unit-#{unit.name}" if unit}'>#{command.keyCap or command.displayText or name}</div>")

				clearMaps =-> $('.keyboard .map').remove()
				selectedUnit = null

				debounceTimer = null

				$('.races-icons').on 'click', '.race-icon', ->
					$icon = $(this)
					race = (@className.match /race-icon race-(\w+)/)[1]
					$.fn.cookie('race-selected', race, expires: 30)
					$('.race-commands').addClass('hide')
					$('.races-icons .race-icon').removeClass('selected')
					$icon.addClass 'selected'
					$(".race-commands.race-#{race}").removeClass('hide')
					$('.unit-icon.selected').click()


				# $('.races-commands').on 'mouseenter', '.unit-icon', ->
				# 	do clearMaps
				# 	do showGlobalMaps
				# 	showMapsForUnit Unit.fromIcon($(this))


				showCurrentUnitMaps = ->
					do clearMaps
					if currentUnit?
						showMapsForUnit currentUnit
					do showGlobalMaps
					if debounceTimer
						clearTimeout debounceTimer
						debounceTimer = null

				$('.races-commands').on 'click', '.unit-icon', ->
					$el = $(this)
					globalState.select Unit.fromIcon $el
					sendMessage "Select #{currentUnit.displayText or currentUnit.name.replace /([a-z])([A-Z])/g, '$1 $2'}"

				globalState.select =(unit)->
					return unless unit
					$el = unit.icon
					$.fn.cookie('unit-selected', unit.name, expires: 30)
					$('.races-commands .unit-icon.selected').removeClass 'selected'
					$el.addClass 'selected'
					@currentUnit = currentUnit = unit
					do showCurrentUnitMaps
				globalState.selectNew =(args...)->
					@select new Unit(args...)

				# $('.races-commands').on 'mouseleave', '.unit-icon', ->
				# 	do showCurrentUnitMaps


				modKeyAttrs = {ctrlKey: 'Control', altKey: 'Alt', metaKey: 'Alt', shiftKey: 'Shift'}
				modKeys = (key for attr, key of modKeyAttrs)


				highlightModKeys =->
					$((".keyboard .key-#{key}" for attr, key of modKeyAttrs).join ',').removeClass('selected')
					$((".keyboard .key-#{key}" for key in currentMods).join ',').addClass('selected')

				keyPress = (key)->
					return if key is 'void'
					if key in modKeys
						unless key in currentMods
							currentMods.push key
							do highlightModKeys
							do showCurrentUnitMaps
					else
						$key = $(".keyboard .key-#{key}").addClass('selected')
						for map in $key.find('.map')
							if m = map.className.match /map-global map-(\w+)/
								return if m[1] in ['Select', 'Interact']
								command = TheCore.commandCards.global[m[1]]
								if command?.on
									command.on = eval("(#{command.on})") if typeof command.on is 'string'
									command.on.call(globalState)
								sendMessage command.displayText or m[1].replace /([a-z])([A-Z])/g, '$1 $2'
							else if m = map.className.match /map-command map-(\w+)/
								command = currentUnit?.commands[m[1]]
								command.on.call currentUnit if command.on
								sendMessage command.displayText or m[1].replace /([a-z])([A-Z])/g, '$1 $2'
								do showCurrentUnitMaps
							break



				keyRelease = (key)->
					return if key is 'void'
					if key in modKeys
						if key in currentMods
							currentMods.splice(currentMods.indexOf(key), 1)
							do highlightModKeys
							do showCurrentUnitMaps
					else
						$(".keyboard .key-#{key}").removeClass('selected')

				$(window).on 'keydown keyup', windowHandler = (e)->
					currentMods = (key for attr, key of modKeyAttrs when e[attr])
					console.log key, e.keyCode, currentMods
					do highlightModKeys
					key = keyClass(keyCodeMaps[currentKeyboard][e.keyCode]?.toUpperCase())
					keyFn = switch e.type
						when 'keydown' then keyPress
						when 'keyup' then keyRelease
					keyFn key if key.match /^\w+$/
					e.preventDefault()
					do showCurrentUnitMaps


				$('.keyboard').on 'mousedown', '.key', (e)->
					$key = $(this)
					key = @className.match(/key key-(\w+)/)[1]
					keyPress key
				$('.keyboard').on 'mouseup', '.key', (e)->
					$key = $(this)
					key = @className.match(/key key-(\w+)/)[1]
					keyRelease key

				mouseButtons = ("#{which}MouseButton" for which in [null, 'Left', 'Middle', 'Right', 'Forward', 'Back'])
				$('body').on 'contextmenu', (e)->
					false unless currentMods.length > 0
				$('body').on 'mousedown', (e)->
					key = mouseButtons[e.which]
					keyPress key
				$('body').on 'mouseup', (e)->
					key = mouseButtons[e.which]
					keyRelease key

				$('select.display-side').change ->
					$('.keyboard').removeClass ("display-#{side}" for side in ['left', 'right', 'full']).join(' ')
					$('.keyboard').addClass "display-#{$(this).val()}"
					$.fn.cookie('display-side-val', $(this).val(), expires: 30)

				$('select.hotkey-file').change ->
					filename = $(this).val()
					TheCore.currentHotkeys = currentHotkeys = loadHotkeys hotkeysFiles[filename]
					$.fn.cookie('hotkey-file-val', filename, expires: 30)
					if filename.match /Left/
						$('select.display-side').val('left').change()
					else if filename.match /Right/
						$('select.display-side').val('right').change()
					else
						$('select.display-side').val('full').change()

					if (race = filename.match(/(Zerg|Protoss|Terran)/)?[1])
						$(".race-icon.race-#{race}").click()
					else if filename.match(/Random/)
						race = 'Zerg Protoss Terran'.split(' ')[Math.floor(Math.random()*3)]
						$(".race-icon.race-#{race}").click()
					do showCurrentUnitMaps

				$('select.keyboard-layout').change ->
					currentKeyboard = $(this).val()
					$.fn.cookie('keyboard-layout-val', currentKeyboard, expires: 30)
					$(window).unbind windowHandler
					TheCore.loadTheCoreForKeyboard currentKeyboard


				$('select.display-side').val($.fn.cookie('display-side-val') or $('select.display-side option')[0].value).change()

				hotkeysFile = if (val = $.fn.cookie('hotkey-file-val'))
					if hotkeysFiles[val]
						val
					else
						$.fn.cookie('tutorial-dismiss', false)
						$('select.hotkey-file option')[0].value
				else
					$('select.hotkey-file option')[0].value
				$('select.hotkey-file').val(hotkeysFile).change()

				do showCurrentUnitMaps

				$(".race-icon.race-#{$.fn.cookie('race-selected') or 'Terran'}").click()
				$(".unit-icon.unit-#{$.fn.cookie('unit-selected') or 'SCV'}").click()

				$('.tutorial-overlay').on 'click', ->
					$('.tutorial-overlay,.tutorial').hide()
					$.fn.cookie('tutorial-dismiss', true, expires: 30)

				if $.fn.cookie('tutorial-dismiss') and $.fn.cookie('tutorial-dismiss') isnt 'false'
					$('.tutorial-overlay').click()
