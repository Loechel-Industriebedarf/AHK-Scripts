^y::
	Loop {
		; BESTELLNUMMER KOPIEREN
		DllCall("SetCursorPos", int, 393, int, 280)				; In den Tab "Einkauf" gehen
		MouseClick, left	
		Sleep 50
		Send ^a	
		Sleep 500		
		DllCall("SetCursorPos", int, 359, int, 520)				; Zur Bestellnummer gehen
		MouseClick, left
		Send ^c													; Bestellnummer kopieren
		Sleep 100
		
		; WEBSEITE DURCHSUCHEN
		DllCall("SetCursorPos", int, 1638, int, 224)			; "Suchen"
		MouseClick, left
		Sleep 100
		Send ^v
		Send {ENTER}
		Sleep 2000												; Warten, bis Webseite geladen hat
		
		; BILD SPEICHERN UND KOPIEREN
		DllCall("SetCursorPos", int, 1413, int, 619)			; Mauszeiger auf Grafik bewegen
		MouseClick, right
		MouseMove, 20, 40, 5, R									; "Grafik speichern"
		MouseClick, left
		Sleep 100
		Send Kemmler
		Send ^v													; Bestellnummer einfügen
		Send .													; .jpg anhängen
		Send jpg
		Sleep 100
		Send ^a
		Send ^c													; Bildlink kopieren
		Sleep 100
		Send {ENTER}
		Sleep 1000
		
		; BILD EINFÜGEN
		DllCall("SetCursorPos", int, 355, int, 282)				; Zum "Verkauf 2" Tab gehen
		MouseClick, left
		MouseClick, left
		Sleep 100
		DllCall("SetCursorPos", int, 946, int, 389)				; Bilddateinamen einfügen
		MouseClick, left
		Send ^v
		Sleep 100
		Send {F3}												; Speichern
		Sleep 200
		Send !{Right}											; Zum nächsten Artikel gehen
		Sleep 100
	}
Return

^Esc::Reload