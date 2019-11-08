
LogToFile(txt){
    global logOn
    if(logOn=1){
        file := FileOpen("log.txt", "a")
        file.write(txt)
        file.write("`n")
        file.close()
    }
}

LogToFileMsg(msg, txt){
    global logOn
    if(logOn=1){
        file := FileOpen("log.txt", "a")
        file.write(msg)
        file.write(": ")
        file.write(txt)
        file.write("`n")
        file.close()
    }
}

