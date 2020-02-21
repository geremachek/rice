/* catfm - Jonah G. Rongstad */

package config

import "github.com/gdamore/tcell"

var (
	XBuff int = 1
	YBuffTop int = 1
	YBuffBottom int = 3

	KeyRefresh string = "f"
	KeyQuit string = "q"
	KeyDelete string = "d"
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

	BarLocale = "bottom"
	BarFg tcell.Color = tcell.ColorOlive
	BarBg tcell.Color = tcell.ColorOlive
	BarDiv string = " "
	BarStyle = map[string]tcell.Style{
		"1*$TAB*": tcell.StyleDefault.Background(BarBg).Foreground(tcell.ColorBeige),
		"2total": tcell.StyleDefault.Background(BarBg).Foreground(tcell.ColorBeige),
		"3cwd": tcell.StyleDefault.Foreground(BarFg).Reverse(true),
	}

	SelectType string = "default" // full, default, arrow
	SelectStyle tcell.Style = tcell.StyleDefault.Foreground(tcell.ColorMaroon).Reverse(true)
	SelectArrow string = "> "
	SelectArrowStyle tcell.Style = tcell.StyleDefault.Foreground(tcell.ColorIndianRed).Bold(true)

	PipeType = ""
	PipeStyle tcell.Style = tcell.StyleDefault.Foreground(tcell.ColorGrey)
	PipeText = ""
	PipeTextStyle = tcell.StyleDefault.Foreground(tcell.ColorMaroon).Bold(true).Underline(true)


	Shell string = "dash"
	TildeHome bool = false

	FileOpen = map[string][]string {
		"*": []string{"t", "vim '@'"},
		"jpg": []string{"g", "sxiv '@'"},
		"jpeg": []string{"g", "sxiv '@'"},
		"png": []string{"g", "sxiv '@'"},
		"gif": []string{"g", "sxiv '@'"},
		"tiff": []string{"g", "sxiv '@'"},
		"pdf": []string{"g", "mupdf '@'"},
	}

	FileColors = map[string]tcell.Style {
		"[dir]": tcell.StyleDefault.Foreground(tcell.GetColor("#508cbe")).Bold(true),
		"jpg": tcell.StyleDefault.Foreground(tcell.GetColor("#85678f")),
		"jpeg": tcell.StyleDefault.Foreground(tcell.GetColor("#85678f")),
		"png": tcell.StyleDefault.Foreground(tcell.GetColor("#85678f")),
		"gif": tcell.StyleDefault.Foreground(tcell.GetColor("#85678f")),
		"tiff": tcell.StyleDefault.Foreground(tcell.GetColor("#85678f")),
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
