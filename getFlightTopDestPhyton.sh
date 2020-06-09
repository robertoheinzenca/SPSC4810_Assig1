#!/usr/bin/env python3 
#"PHX" 

python3 -<<'END_SCRIPT' 
import pandas as pd
flights = pd.read_csv("2007_aa")
topsDest = pd.DataFrame({'Dest':flights['Dest'],'#Arrivals':flights['UniqueCarrier']}).groupby('Dest').count() 
print(topsDest.sort_values('#Arrivals',ascending = False).head(3))
print("Roberto Heinzen")
END_SCRIPT
