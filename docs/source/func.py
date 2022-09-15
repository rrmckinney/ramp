def run():
    link = "http://18.222.146.48/RAMP/v1/raw/1047/data/"
    station = "1047"


    import wget
    import pandas as pd
    import matplotlib.pyplot as plt 
    import numpy as np
    import os.path
    import sys
    from datetime import date, timedelta

    today = date.today()
    hist = today - timedelta(days=7)
    head = ["Date","CO","NO","NO2", "O3","PM1.0","PM2.5","PM10"]
    units = ["ppb","ppb","ppb","ppb","ug/m3","ug/m3","ug/m3"]
    week_dat = pd.DataFrame(columns = head)
    x = pd.DataFrame()

    for i in range(8):
        try:
            url =  link+hist.strftime("%Y-%m-%d")+"-"+station+".txt"
            dir = os.path.expanduser("./data")
            dat = wget.download(url, out = dir)
            
            dat = pd.read_csv(dat)
            dat.iloc[:,1] = pd.to_datetime(dat.iloc[:,1])

            dat = dat.select_dtypes(exclude=["object"])
            dat = dat.iloc[:,0:12]
            for e in range(4):
                dat = dat.drop(columns=dat.columns[5])

            dat.columns = head
            dat.set_index('Date')

            week_dat = pd.concat([dat,week_dat], ignore_index=False)
            
            hist = hist + timedelta(days=1)
        except:
            print("Warning: An error occured for "+hist.strftime("%Y-%m-%d")+". Check to see if data exists.")
            pass

    for r in range(len(head)-1):
        plt.figure(figsize=(15,5))
        plt.scatter(week_dat['Date'],week_dat[str(head[r+1])], s=1)
        plt.title(head[r+1])
        plt.ylabel("Concentration ("+str(units[r])+")")
        plt.xlabel("Date")
        plt.grid()
