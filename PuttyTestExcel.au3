#include<Excel.au3>
Local $i
$sFilePath1 = "C:\Users\NatarajanRamanathan\Desktop\putty test\PuttyTest.xlsx"
$oExcel = _Excel_Open()
$oWorkBook = _Excel_BookOpen($oExcel, $sFilePath1)
   $nb_rows = $oWorkBook.ActiveSheet.UsedRange.Rows.Count
   Run("C:\Windows\putty.exe localhost:22")
   WinWaitActive("Natarajan - PuTTY")
   WinWait("Natarajan - PuTTY")
   For $i = 1 To 4
	  $DataCellValue = _Excel_RangeRead($oWorkBook, "TestSheet", "A" & $i, 3)
	  Sleep(2000)
	  ControlSend("Natarajan - PuTTY","","", $DataCellValue)
   Next
   For $i = 5 To $nb_rows
	  $DataCellValue = _Excel_RangeRead($oWorkBook, "TestSheet", "A" & $i, 3)
	  Sleep(2000)
	  ControlSend("Administrator: Command Prompt","","", $DataCellValue)
   Next



   Func SendkeyPuttyScreen($DataCellValue)
	;MsgBox(0, "", "The following data is stored in the clipboard: " & @CRLF & $DataCellValue)
	send($DataCellValue)
EndFunc