
Sub Custom_ColumnFilter(targetSheet As Worksheet, columnReference As Integer, criteriaString As String)

    targetSheet.Columns(columnReference).AutoFilter field:=1, Criteria1:=criteriaString, VisibleDropDown:=False
    

End Sub

Sub Custom_ReleaseFilter(targetSheet As Worksheet)
    
    targetSheet.AutoFilterMode = False
    
End Sub

Sub Custom_DeleteVisibleRows(targetSheet As Worksheet)
    
    targetSheet.UsedRange.Offset(1, 0).SpecialCells(xlCellTypeVisible).EntireRow.Delete

End Sub

Sub Custom_SetColumnWidthSheet(targetSheet As Worksheet, columnWidthSheet As Integer)

 '  Adjust column width for the entire sheet.
    targetSheet.Cells.ColumnWidth = columnWidthSheet
    
End Sub

' Excel Built-in function to check if a string is present within another string.
' InStr(Start, String1, String2, Compare)
' Start - 'Optional. Numeric expression that sets the starting position for each search.
'  If omitted, search begins at the first character position. The start index is 1-based.
'String1 - Required. String expression being searched.
'String2 - Required. String expression sought.
'Compare - Optional. Specifies the type of string comparison.
'  If Compare is omitted, the Option Compare setting determines the type of comparison.
'https://msdn.microsoft.com/en-us/library/8460tsh1(v=vs.90).aspx

Sub Custom_InsertRenameColumn(targetSheet As Worksheet, targetColumnReference As Integer, targetColumnWidth As Integer, _
    targetColumnName As String)
' Insert a new column at the tagetColumnReference of the targetSheet, set width as targetColumnWidth and set name as targetColumnName

    targetSheet.Columns(targetColumnReference).Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    targetSheet.Columns(targetColumnReference).ColumnWidth = targetColumnWidth
    targetSheet.Cells(1, targetColumnReference).Value = targetColumnName

End Sub