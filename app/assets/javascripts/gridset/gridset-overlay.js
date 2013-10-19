// Gridset Overlay JS

gs = {

	init: function () {
		
		if (window.location.href.match('gridset=show')) gs.show();
	
		gs.bind(document, 'keydown', function (e) { 
		
			if (!e) var e = window.event;
		
			if(e.metaKey || e.ctrlKey) {
				
				switch (e.which || e.keyCode) {
					case 71:
					
						var gw = document.querySelectorAll('.gridsetoverlaywrap, #gridsetoverlaystyles, #gridscreenwidthwrap');
					
						if (gw.length == 0) window.location.href = window.location.href + '?gridset=show';
						else window.location.href = window.location.href.replace('?gridset=show', '');
						
						gs.prevent(e);
						break;
						
				}
				
			}
		
		
		});
	
	},
	
	width: function () {
		
		var swv = document.getElementById('gridscreenwidthval');
		if (swv) swv.innerHTML = window.innerWidth + 'px';
		
	},

	show: function () {
	
		var b = document.getElementsByTagName('body')[0],
				gridareas = document.querySelectorAll('[class*=-showgrid]'),
				areacount = gridareas.length,
				wrapper = document.querySelectorAll('.wrapper'),
			
				styles = '.gridsetoverlaywrap{display:block;padding:0 !important;position:absolute;top:0;left:0;width:100%;height:100%;z-index:10000;pointer-events:none;}.gridwrap{display:block;padding:0 !important;position:absolute;top:0;left:0;width:100%;height:100%;font-family:Helvetica, Arial, sans-serif !important;}.gridoverlay{display:block;padding:0 !important;position:relative;height:100%;overflow:hidden !important;background:none !important;border-bottom:1px solid #FFD800 !important;}.gridoverlay .gridset{display:block;padding:0 !important;width:100%;height:100%;opacity:0.8;border:none !important;position:relative !important;height:30px !important;border-top:1px solid #FFD800 !important;margin:0 !important;}.gridoverlay .gridset div{display:block;position:absolute !important;padding:0;text-align:left;border:1px solid #FFD800 !important;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;box-sizing:border-box;height:100000em !important;top:0;margin-top:-1px !important;}.gridoverlay div small{font-size:10px !important;display:block;width:100%;text-align:center;font-weight:400 !important;letter-spacing: 1px !important;padding-top:0 !important;text-transform:none !important;height:22px !important;line-height:22px !important;text-style:normal !important;border-bottom:1px solid #FFD800 !important;color:#333 !important;background-color:#FFF79F !important;}.gridsetoverlaywrap .noshow{display:none;}#gridscreenwidthwrap{display:block;margin:0 !important;padding:0 !important;display:none;width:100%;position:fixed !important;z-index:10000 !important;bottom:0 !important;left:0 !important;height:30px !important;opacity:0.95;border-top:1px solid #FFD800 !important;color:#333;background-color:#FFF79F !important;font-family:Helvetica, Arial, sans-serif !important;}#gridscreenwidth{display:block;margin:0 !important;width:100% !important;max-width:none !important;text-align:center !important;font-size:12px;line-height:1;padding-top:8px !important;}#gridscreenwidth strong{text-transform:none;}.gridsetnoareas .gridsetoverlaywrap{display:block;position:fixed !important;}.gridsetnoareas .gridoverlay .gridset{position:relative !important;}[class*=-showgrid] .gridset[class*=-show], .gridsetnoareas .gridset{display:none;}',
				
				newstyles = document.createElement('style'),
				newwidth = document.createElement('div'),
				head = document.getElementsByTagName('head'),
				newfavicon = document.createElement('link'),
				newgsstyles = document.createElement('link');
		
		newstyles.id = 'gridsetoverlaystyles';
		newstyles.innerHTML = styles;
		newstyles.type = 'text/css';
		
		newwidth.id = 'gridscreenwidthwrap';
		newwidth.innerHTML = '<p id="gridscreenwidth">Screen width: <strong id="gridscreenwidthval"></strong></p>';
		
		b.appendChild(newstyles);
		b.appendChild(newwidth);
		
		var newwidthdisplay = (newwidth.currentStyle) ? newwidth.currentStyle.display : getComputedStyle(newwidth, null).display;
		
		newfavicon.rel = "shortcut icon";
		newfavicon.id = "gridsetfavicon";
		newfavicon.href = "http://dev.gridsetapp.com/app/img/favicon.ico";
		
		head[0].appendChild(newfavicon);
		
		if (newwidthdisplay != 'block') {
		
			newgsstyles.rel = "stylesheet";
			newgsstyles.id = "gridsetstyles";
			newgsstyles.href = "https://get.gridsetapp.com/24173/";
			head[0].appendChild(newgsstyles);
		
		}
		
		if (areacount) {
			
			var j = areacount;
			
			while (j-- > 0) {
			
				var area = gridareas[j];
			
				gs.buildgrid(area, j, areacount);
				
				if (window.getComputedStyle(area,null).getPropertyValue("position") == 'static') area.style.position = 'relative';
				
			}
			
		}
		else {
			
			if (!b.className.match('gridsetnoareas')) b.className += ' gridsetnoareas';
			
			gs.buildgrid(b, j, areacount);
		
		}
		
		gs.width();
		gs.bind(window, 'resize', gs.width);
	
	},
	
	buildgrid: function (area, j, showgrid) {
		
		var set = JSON.parse('{"id":"24173","name":"Beertap","grids":{"lg":{"name":"large","prefix":"lg","rangeMin":"900","rangeMax":"none","columns":{"lg1":{"name":"lg1","unit":null,"percent":10.7260101,"px":96.53},"lg2":{"name":"lg2","unit":null,"percent":10.7260101,"px":96.53},"lg3":{"name":"lg3","unit":null,"percent":10.7260101,"px":96.53},"lg4":{"name":"lg4","unit":null,"percent":10.7260101,"px":96.53},"lg5":{"name":"lg5","unit":null,"percent":10.7260101,"px":96.53},"lg6":{"name":"lg6","unit":null,"percent":10.7260101,"px":96.53},"lg7":{"name":"lg7","unit":null,"percent":10.7260101,"px":96.53},"lg8":{"name":"lg8","unit":null,"percent":10.7260101,"px":96.53}},"gutter":{"unit":null,"px":18.18181818,"percent":2.02020202},"ratio":{"name":"even","value":1}},"md":{"name":"medium","prefix":"md","rangeMin":"600","rangeMax":"900","columns":{"md1":{"name":"md1","unit":null,"percent":23.47222222,"px":140.83},"md2":{"name":"md2","unit":null,"percent":23.47222222,"px":140.83},"md3":{"name":"md3","unit":null,"percent":23.47222222,"px":140.83},"md4":{"name":"md4","unit":null,"percent":23.47222222,"px":140.83}},"gutter":{"unit":null,"px":12.12121212,"percent":2.02020202},"ratio":{"name":"even","value":1}},"sm":{"name":"small","prefix":"sm","rangeMin":"300","rangeMax":"600","columns":{"sm1":{"name":"sm1","unit":null,"percent":48.5,"px":145.5},"sm2":{"name":"sm2","unit":null,"percent":48.5,"px":145.5}},"gutter":{"unit":null,"px":9,"percent":3},"ratio":{"name":"even","value":1}}},"prefixes":{"index":["lg","md","sm"]}}'),
		
				gridwrap = document.createElement('div'),
				gridinner = (showgrid) ? '<div class="gridwrap"><div class="gridoverlay">' : '<div class="gridwrap"><div class="gridoverlay wrapper">',
				
				awidth = area.clientWidth,
				apadleft = (parseFloat(gs.getstyle(area, 'padding-left')) / awidth) * 100,
				apadright = (parseFloat(gs.getstyle(area, 'padding-right')) / awidth) * 100;
		
		if (showgrid) gridwrap.className = 'gridsetoverlaywrap';
		else gridwrap.className = 'gridsetoverlaywrap';
		
		for (j in set.grids) {
		
			var grid = set.grids[j],
					showreg = new RegExp('(^| )' + grid.prefix + '-showgrid( |$)');
			
			if (!showgrid || area.className.match(showreg)) {
			
				gridinner += '<div style="padding-left:' + apadleft + '%;padding-right:' + apadright + '%;" class="gridset ' + grid.prefix + '-show">';
				
				for (k in grid.columns) {
					
					var col = grid.columns[k];
					
					gridinner += '<div class="' + col.name + '"><small>' + col.name + '</small></div>';
				
				}
				
				gridinner += '</div>';
			
			}
		}
		
		gridinner += '</div></div>';
		
		gridwrap.innerHTML = gridinner;
		
		area.appendChild(gridwrap);
		
	},
	
	bind : function (t, e, f) {
		
		if (t.attachEvent) t.attachEvent('on' + e, f);
		else t.addEventListener(e, f, false);
	
	},
	
	prevent : function (e) {
	
		if (e.preventDefault) e.preventDefault();
		else event.returnValue = false;
	
	},
	
	getstyle : function (t, p){
	
	 if (t.currentStyle) return t.currentStyle[p];
	 else if (document.defaultView && document.defaultView.getComputedStyle) return document.defaultView.getComputedStyle(t, "").getPropertyValue(p);
	 else return t.style[p];
	 
	}


};

gs.init();