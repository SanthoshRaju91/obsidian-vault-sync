      

**D3 Chart types**

  

Considering Data Types we differentiate 

  

1.  Categorical (Genres)
2.  Ordinal (t-shirt sizes)
3.  Quantitative (temperatures)
4.  Temporal (dates)
5.  Spatial (cities)

  

  

**Bar Chart** - Categorical comparisons 

  

Domain - Categorical; Range - Quantitative

  

**Histogram -** For categorical distributions

  

Domain - Quantitative bins; Range - Frequency of quantitative bins

  

**Scatterplot** - For correlation

  

2 attributes and the relationship between their quantitative values.

  

**Line chart** - For temporal trends

  

Domain - Temporal; Range Quantitative

  

**Tree** - For hierarchy

  

Parent-child relationship along multiple tiers of category

  

**Node-link diagram**

For connection

  

Relationship between entities

  

**Chloropleth** - For spatial trends

  

Domain - spatial regions; Range - quantitative

  

**Pie chart** - For hierarchical part-to-whole

  

Best for 

-   25%, 30%, 75%
-   3 or 4 values

  

Not good for

  

-   Comparing fine differences
-   Multiple totals

  

**SVG**

  

XML type language, is good at drawing shapes

  

Coordinate system

  

Starts 0,0 at the top left corner of the screen

  

And increasing the x the first coordinate will move to right of the screen 

  

And increasing the y the second coordinate will move to down the screen.

  

  

x: date

y: temperature

  

  

D paths = “M5 and L5”

  

M - move to

L - line to

  

D3 API

  

-   Date preparation
-   Layout calculation
-   Dom manipulation

-   Finishing touches
-   Interactions

  

  

 const computeTimePeriods = function() { 

 let period = 0;

  

 for(let i = START_TIME_SLOT; i <= END_TIME_SLOT; i++) { 

 const j = i > 12 ? (i % 12) : i;

  

 timePeriodBlocks.push({

 start: period,

 displayTime: j,

 end: period += PERIOD

 }); 

 } 

 }

  

const START_PERIOD = 0;

 const PERIOD = 60;

  

  

 let timePeriodBlocks = [];