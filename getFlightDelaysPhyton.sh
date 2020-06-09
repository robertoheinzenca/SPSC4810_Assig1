#!/usr/bin/env python3 
#"PHX" 

python3 -<<'END_SCRIPT' 
import pandas as pd
flights = pd.read_csv("2007_aa")
delays = flights[flights["Origin"]=="PHX"][["Origin","Dest","ArrDelay"]].head(3)
print(delays)
END_SCRIPT
