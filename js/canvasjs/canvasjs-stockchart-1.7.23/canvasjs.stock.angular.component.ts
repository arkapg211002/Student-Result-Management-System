/*
CanvasJS Angular StockChart- https://canvasjs.com/
Copyright 2023 fenopix

--------------------- License Information --------------------
The software in CanvasJS Angular StockChart is free and open-source. But, CanvasJS Angular StockChart relies on CanvasJS StockChart which requires a valid CanvasJS StockChart license for commercial use. Please refer to the following link for further details https://canvasjs.com/license/

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/

/*tslint:disable*/
/*eslint-disable*/
/*jshint ignore:start*/
import { Component, AfterViewInit, OnChanges, OnDestroy, Input, Output, EventEmitter } from '@angular/core';
declare var require: any;
var CanvasJS = require('./canvasjs.stock.min');

@Component({
  selector: 'canvasjs-stockchart',
  template: '<div id="{{stockChartContainerId}}" [ngStyle]="styles"></div>'
})

class CanvasJSStockChart implements AfterViewInit, OnChanges, OnDestroy {
	static _cjsStockChartContainerId = 0;
	stockChart: any;
	stockChartContainerId: any;
	prevStockChartOptions: any;
	shouldUpdateChart = false;

	@Input()
		options: any;
	@Input()
		styles: any;
		
	@Output()
		stockChartInstance = new EventEmitter<object>();
		
	constructor() {
		this.options = this.options ? this.options : {};
		this.styles = this.styles ? this.styles : { width: "100%", position: "relative" };
		this.styles.height = this.options.height ? this.options.height + "px" : "400px";
		
		this.stockChartContainerId = 'canvasjs-angular-stockchart-container-' + CanvasJSStockChart._cjsStockChartContainerId++;
	}

	ngDoCheck() {
		if(this.prevStockChartOptions != this.options) {
			this.shouldUpdateChart = true;
		}
	}
	
	ngOnChanges() {		
		//Update Chart Options & Render
		if(this.shouldUpdateChart && this.stockChart) {
			this.stockChart.options = this.options;
			this.stockChart.render();
			this.shouldUpdateChart = false;
			this.prevStockChartOptions = this.options;
		}
	}
	
	ngAfterViewInit() {		
	  this.stockChart = new CanvasJS.StockChart(this.stockChartContainerId, this.options);
	  this.stockChart.render();
	  this.prevStockChartOptions = this.options;
	  this.stockChartInstance.emit(this.stockChart);
	}

	ngOnDestroy() {
		if(this.stockChart)
			this.stockChart.destroy();
	}
}

export {
	CanvasJSStockChart,
	CanvasJS
};
/*tslint:enable*/
/*eslint-enable*/
/*jshint ignore:end*/