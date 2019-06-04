//import domkit.Builder;

class SampleView extends h2d.Flow implements h2d.domkit.Object {

    static var SRC = 
        <flow class="box" vertical> 
            Hello World DomKit!
            <bitmap src={tile} public id="mybmp"/>
        </flow>

    public function new(tile,?parent) {
        super(parent);
        initComponent();
    }
}

//PARAM=-lib domkit
class Main extends hxd.App {

	override function init() {
        var view = new SampleView(h2d.Tile.fromColor(0xFF,32,32),s2d);
        view.mybmp.alpha = 0.8;
		var style = new h2d.domkit.Style();
		style.load(hxd.Res.style);
		style.applyTo(view);
	}

	static function main() {
		#if hl
		hxd.res.Resource.LIVE_UPDATE = true;
		hxd.Res.initLocal();
		#else
		hxd.Res.initEmbed();
		#end
		new Main();
	}
}