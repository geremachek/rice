/*

- C A T F M  C O N F I G -

*/

package config

import "github.com/gdamore/tcell"

var (
	XBuff int = 1
	YBuffTop int = 3
	YBuffBottom int = 1

	KeyRefresh rune = 'f'
	KeyQuit rune = 'q'
	KeyDelete rune = 'd'
	KeyBulkDelete rune = 'D'
	KeyCopy rune = 'p'
	KeyMove rune = 'm'
	KeySelect rune = 'c'
	KeySelectAll rune = '='
	KeyDeselectAll rune = '-'
	KeyDotToggle rune = '.'
	KeyGoToFirst rune = 'g'
	KeyGoToLast rune = 'G'
	KeyLeft rune = 'h'
	KeyDown rune = 'j'
	KeyUp rune = 'k'
	KeyRight rune = 'l'

	BarLocale = "top"
	BarFg tcell.Color = tcell.ColorDarkRed
	BarBg tcell.Color = tcell.ColorDefault
	BarDiv string = " "
	BarStyle = map[string]tcell.Style{
		"1cwd": tcell.StyleDefault.Background(BarBg).Foreground(BarFg).Bold(true),
		"2total": tcell.StyleDefault.Background(BarBg),
		"3size": tcell.StyleDefault.Background(BarBg),
	}

	SelectType string = "full" // full, default, arrow
	SelectStyle tcell.Style = tcell.StyleDefault.Background(tcell.GetColor("#e1d7d0")).Bold(true)
	SelectArrow string = "> "
	SelectArrowStyle tcell.Style = tcell.StyleDefault.Foreground(tcell.ColorIndianRed).Bold(true)

	PipeType = ""
	PipeStyle tcell.Style = tcell.StyleDefault.Foreground(tcell.ColorDefault)
	PipeText = "user@host"
	PipeTextStyle = tcell.StyleDefault.Foreground(tcell.ColorMaroon).Bold(true).Underline(true)


	Shell string = "dash"

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

	Bindings = map[rune][]string {
		'~': []string{"cd", "~"},
		'1': []string{"cd", "~/repos"},
		'2': []string{"cd", "~/repos/rice"},
		'3': []string{"cd", "~/.config"},
		'v': []string{"t", "less '@'"},
		'w': []string{"t", "setwal '@' > /dev/null &"},
		'L': []string{"t", "sudo sock -e -B -c=ffffff -b=000000 -o=d1cfb3 -C -m='Session Locked!'"},
	}

	Selected []string
)
