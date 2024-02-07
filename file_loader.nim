import neel
import wNim/wFileDialog

exposeProcs:
    proc file_picker() =
        var fd = FileDialog(style=wFdOpen or wFdMultiple or wFdFileMustExist)
        callJs("test", fd.display())

    proc echoThis(param: seq[JsonNode]) =
        echo param

startApp("assets")

# Start App does not accept webDirPath argument: "Type mismatch"

# TODO: Test on linux with full Admin rights