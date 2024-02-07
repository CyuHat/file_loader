import neel
# import wNim/wFileDialog
# Peut-être que ça ne marche que sur Windows

exposeProcs:
    proc file_picker() =
        # var fd = FileDialog(style=wFdOpen or wFdMultiple or wFdFileMustExist)
        # callJs("log_this", fd.display())
        callJS("log_this", "C'est un test!")

    proc echoThis(param: seq[JsonNode]) =
        echo param

startApp("assets")

# Start App does not accept webDirPath argument on Windows: "Type mismatch"