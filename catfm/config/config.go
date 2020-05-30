/* catfm - Jonah G. Rongstad */

package config

import (
	"github.com/gdamore/tcell"
)

var (
	XBuff int = 2
	YBuffTop int = 2
	YBuffBottom int = 2

	KeyRefresh string = "f"
	KeyQuit string = "q"
	KeyDelete string = "r"
	KeyRename string = "e"
	KeyRecycle string = "d"
	KeyBulkDelete string = "D"
	KeyCopy string = "p"
	KeyMove string = "m"
	KeySelect string = " "
	KeySelectAll string = "ctrl-a"
	KeyDeselectAll string = "-"
	KeyDotToggle string = "."
	KeyGoToFirst string = "g"
	KeyGoToLast string = "G"
	KeyLeft string = "h"
	KeyDown string = "j"
	KeyUp string = "k"
	KeyRight string = "l"

	BarLocale = ""
	BarFg tcell.Color = tcell.ColorBeige
	BarBg tcell.Color = tcell.GetColor("#897471")
	BarDiv string = " "
	BarStyle = map[string]tcell.Style {
		"1total": tcell.StyleDefault.Background(BarBg),
		"2cwd": tcell.StyleDefault.Foreground(BarBg),
	}

	SelectType string = "default" // full, default, arrow
	SelectStyle tcell.Style = tcell.StyleDefault.Background(tcell.GetColor("#897471"))
	SelectArrow string = "> "
	SelectArrowStyle tcell.Style = tcell.StyleDefault.Foreground(tcell.ColorIndianRed).Bold(true)

	PipeType = ""
	PipeStyle tcell.Style = tcell.StyleDefault.Foreground(tcell.ColorGrey)
	PipeText = ""
	PipeTextStyle = tcell.StyleDefault.Foreground(tcell.ColorMaroon).Bold(true).Underline(true)


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
	}

	FileColors = map[string]tcell.Style {
		"[dir]": tcell.StyleDefault.Foreground(tcell.ColorSlateGrey),
	}

	Bindings = map[string][]string {
		"home": []string{"cd", "~"},
		"f1": []string{"cd", "~/repos"},
		"f2": []string{"cd", "~/pictures"},
		"f3": []string{"cd", "~/repos/rice"},
		"f4": []string{"cd", "~/.config"},
		"v": []string{"t", "cat -n '@' | less"},
		"w": []string{"t", "setwal '@' > /dev/null &"},
		"L": []string{"t", "sudo sock -B -c=ff0000 -C -m='Session Locked!'"},
		"V": []string{"g", "firefox '@'"},
	}

	Selected []string
)

func Init() {
}
