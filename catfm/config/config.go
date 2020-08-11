/* catfm - Jonah G. Rongstad */

package config

import (
	"github.com/gdamore/tcell"
)

var (
	XBuff int = 1
	YBuffTop int = 1
	YBuffBottom int = 3

	KeyRefresh string = "f"
	KeyQuit string = "q"
	KeyDelete string = "K"
	KeyRename string = "e"
	KeyRecycle string = "d"
	KeyToggleSearch string = "S"
	KeyBulkDelete string = "D"
	KeyCopy string = "p"
	KeyMove string = "m"
	KeySelect string = " "
	KeySelectAll string = "A"
	KeyDeselectAll string = "-"
	KeyDotToggle string = "."
	KeyGoToFirst string = "g"
	KeyGoToLast string = "G"
	KeyLeft string = "h"
	KeyDown string = "j"
	KeyUp string = "k"
	KeyRight string = "l"

	BarLocale = "bottom"
	BarFg tcell.Color = tcell.ColorDefault
	BarBg tcell.Color = tcell.ColorBlue
	BarDiv string = ""

	BarStyle = map[string]tcell.Style {
		"1 ": tcell.StyleDefault.Background(BarBg),
		"2total": tcell.StyleDefault.Foreground(BarFg).Background(BarBg).Underline(true),
		"3 ": tcell.StyleDefault.Background(BarBg),
	}

	SelectType string = "default" // full, default, arrow
	SelectStyle tcell.Style = tcell.StyleDefault.Background(tcell.GetColor("#D3D3D3"))
	SelectArrow string = "> "
	SelectArrowStyle tcell.Style = tcell.StyleDefault.Foreground(tcell.ColorIndianRed).Bold(true)

	PipeType = ""
	PipeStyle tcell.Style = tcell.StyleDefault
	PipeText = ""
	PipeTextStyle = tcell.StyleDefault.Foreground(tcell.ColorBlue).Bold(true).Underline(true)


	Shell string = "dash"
	TildeHome bool = true
	RecycleBin string = "/home/gmk/.cache/catfm"

	FileOpen = map[string][]string {
		"*": []string{"t", "vim '@'"},
		"jpg": []string{"g", "sxiv '@'"},
		"jpeg": []string{"g", "sxiv '@'"},
		"png": []string{"g", "sxiv '@'"},
		"gif": []string{"g", "sxiv '@'"},
		"tiff": []string{"g", "sxiv '@'"},
		"pdf": []string{"g", "mupdf '@'"},
		"gb": []string{"g", "vbam '@'"},
		"mp4": []string{"g", "mpv '@'"},
		"mp3": []string{"g", "mpv '@'"},
	}

	FileColors = map[string]tcell.Style {
	}

	Bindings = map[string][]string {
		"home": []string{"cd", "~"},
		"f1": []string{"cd", "~/repos"},
		"f2": []string{"cd", "~/pictures"},
		"f3": []string{"cd", "~/repos/rice"},
		"f4": []string{"cd", "~/.config"},
		"v": []string{"t", "cat -n '@' | less"},
		"w": []string{"g", "wal -l -i '@'"},
		"L": []string{"t", "sudo sock -B -c=ff0000 -C -m='Session Locked!'"},
		"V": []string{"g", "firefox '@'"},
		"E": []string{"g", "rm ~/.cache/catfm/*"},
	}
)

func Init() {
}
