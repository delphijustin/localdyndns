dim objFS,objTS,cmdline
Const FOR_READING = 1 
Const FOR_WRITING = 2 
strFileName = "C:\windows\system32\drivers\etc\hosts" 
set cmdline = WScript.Arguments.Named

Set objFS = CreateObject("Scripting.FileSystemObject") 
Set objTS = objFS.OpenTextFile(strFileName, FOR_READING) 
strContents = objTS.ReadAll 
objTS.Close 

arrLines = Split(strContents, vbNewLine) 
Set objTS = objFS.OpenTextFile(strFileName, FOR_WRITING) 

For i= 0 To UBound(arrLines) 
   If InStr(arrLines(i),cmdline.Item("mac"))=0 Then 
      objTS.WriteLine arrLines(i) 
   End If
Next
       objTS.WriteLine cmdline.Item("ip")&" "&cmdline.Item("mac")&"."&cmdline.Item("domain")
objTS.Close 
