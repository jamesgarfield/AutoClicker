Global $CLICKS = 60 					;Clicks per click round

Global $g_run = True 					;Run script while True
Global $g_paused = False				;Pause script while True

HotKeySet("+!{PAUSE}", "Toggle_Pause")	;Alt+Shift+Pause
HotKeySet("+!{END}", "Shut_Down") 		;Alt+Shift+End

Main()

Func Main()
   While $g_run
	  Do_Clicks()
   WEnd
EndFunc

Func Do_Clicks()
   For $i = 0 To $CLICKS
	  MouseClick("left")
   Next
EndFunc

Func Shut_Down()
   $g_run = False
EndFunc

Func Toggle_Pause()
	  $g_paused = Not $g_paused
	  While $g_paused And $g_run
		 Sleep(100)
		 ToolTip("Paused", 0, 0)
	  WEnd
	  ToolTip("")
EndFunc