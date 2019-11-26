package config

import "github.com/gdamore/tcell"

var (
	XBuff int = 1
	YBuffTop int = 1
	YBuffBottom int = 3

	KeyRefresh rune = 'f'
	KeyQuit rune = 'q'
	KeyDelete rune = 'd'
	KeyGroupDelete rune = 'D'
	KeyCopy rune = 'C'
	KeyMove rune = 'M'
	KeySelect rune = ' '
	KeyDotToggle rune = '.'
	KeyLeft rune = 'h'
	KeyDown rune = 'j'
	KeyUp rune = 'k'
	KeyRight rune = 'l'

	BarFg tcell.Color = tcell.ColorDefault
	BarBg tcell.Color = tcell.GetColor("#ff0000")
	BarDiv string = " "
	BarStyle = map[string]tcell.Style{
		"1cwd": tcell.StyleDefault.Background(BarBg).Bold(true),
		"2size": tcell.StyleDefault.Background(BarBg),
		"3mode": tcell.StyleDefault.Background(BarBg),
	}

	FileOpen = map[string][]string {
		"*": []string{"t", "vim @"},
		"jpg": []string{"g", "sxiv @"},
		"jpeg": []string{"g", "sxiv @"},
		"png": []string{"g", "sxiv @"},
		"gif": []string{"g", "sxiv @"},
		"tiff": []string{"g", "sxiv @"},
		"pdf": []string{"g", "mupdf @"},
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
		'v': []string{"t", "less @"},
	}

	Selected []string
)
