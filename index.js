function init() {
    data = [{
        x: ["Male", "Female"],
        y: [4, 1],
        type: 'bar' 
      }];
      Plotly.newPlot('plot', data);
  };
  
  d3.selectAll("#dropdownMenu").on("change", updatePlotly);

  function updatePlotly() {
    var dropdownMenu = d3.select("#dropdownMenu");
    var dataset = dropdownMenu.property("value");
  
    var xData = [];
    var yData = [];
  
    if (dataset === 'Question1') {
      xData = ["Male", "Female"],
      yData = [4, 1];
    };
  
    if (dataset === 'Question2') {
      xData = ["SF", "Champaign", "LA"]
      yData = [2, 2, 1];
    };
  
    var trace = {
      x: [xData],
      y: [yData],
    };
    Plotly.restyle("plot", trace);
  };
  
 
  init();