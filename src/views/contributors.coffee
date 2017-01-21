db = sys.import 'db'
util = sys.import '/util'
behavior = sys.import 'behavior'

referrers = '''
glad.dav1d.de
mappable.com
beta.archilogic.com
tryon.io
webglfundamentals.org
verold.com
stephaneginier.com
urbangalaxyonline.com
g-truc.net
field.io
zephyrosanemos.com
gootechnologies.com
pheelicks.com
artillery.com
dghost.net
robrowser.com
yobi3d.com
jweel.com
ga.me
minko.io
stack.gl
vorg.github.io/pex
variable.io
floorplanner.com
phaser.io
acko.net
threejs.org
voxelquest.com
blend4web.com
khronos.org
playcanvas.com
clara.io
mrdoob.com
imvu-customer-sandbox.com
sketchfab.com
htwins.net
illyriad.co.uk
processingjs.org
opensourcehacker.com
cesiumjs.org
codeflow.org
3dthis.com
gootechnologies.com
webglstats.com
marcinignac.com
turbulenz.com
bfilipek.com
webglreport.com
lolbrothers.com
wellcaffeinated.net
tigraphics.blogspot.com
spacegoo.com
int13h.com
snappymaria.com
renderingpipeline.com
south.im
laugharne.me
germanmentalray.org
threedeemedia.com
threejs.ru
ramsol.in
boxbase.org
greencarbody.de
geeks3d.com
'''.trim().split('\n')

exports.index = class Contributors
    constructor: ->
        null
    
    breadcrumbs: ->
        breadcrumbs = $('<ol class="breadcrumbs"></ol>')
            .appendTo('main')
        
        $('<a></a>')
            .attr('href', '/')
            .text('Home')
            .appendTo(breadcrumbs)
            .wrap('<li></li>')
        
        $('<a></a>')
            .attr('href', '/contributors')
            .text('Contributors')
            .appendTo(breadcrumbs)
            .wrap('<li></li>')

    show: ->
        behavior.deactivate()
        behavior.collapse(@)

        @breadcrumbs()
        
        widget = $('<div class="full box"></div>')
            .appendTo('main')

        $('<h1>Contributors</h1>')
            .appendTo(widget)
        
        $('''<p>
            Without contributing sites WebGL stats would be impossible. A special thanks to:
        </p>''').appendTo(widget)

        list = $('<ul><ul>')
            .appendTo(widget)

        for referrer in referrers
            item = $('<li></li>')
                .appendTo(list)

            $('<a></a>')
                .attr('href', 'http://' + referrer)
                .text(referrer)
                .appendTo(item)
