package config

import "github.com/gdamore/tcell"

var (
	XBuff int = 0
	YBuffTop int = 0
	YBuffBottom int = 2

	Selected []string

	BarBg tcell.Color = tcell.ColorDefault
	BarFg tcell.Color = tcell.GetColor("#ff0000")
	BarDiv string = " "
	BarStyle = map[string]tcell.Style{
		"1cwd": tcell.StyleDefault.Foreground(BarFg).Bold(true),
		"2size": tcell.StyleDefault.Foreground(BarFg),
		"3mode": tcell.StyleDefault.Foreground(BarFg),
		//"3[file @]": tcell.StyleDefault.Background(BarBg),
	}

	FileOpen = map[string]string {
		"*": "vim,t",
		"jpg": "sxiv,g",
		"jpeg": "sxiv,g",
		"png": "sxiv,g",
		"gif": "sxiv,g",
		"tiff": "sxiv,g",
		"pdf": "mupdf,g",
	}

	FileColors = map[string]tcell.Style {
		"[dir]": tcell.StyleDefault.Foreground(tcell.GetColor("#508cbe")).Bold(true),
		"jpg": tcell.StyleDefault.Foreground(tcell.GetColor("#85678f")),
		"jpeg": tcell.StyleDefault.Foreground(tcell.GetColor("#85678f")),
		"png": tcell.StyleDefault.Foreground(tcell.GetColor("#85678f")),
		"gif": tcell.StyleDefault.Foreground(tcell.GetColor("#85678f")),
		"tiff": tcell.StyleDefault.Foreground(tcell.GetColor("#85678f")),
		"go": tcell.StyleDefault.Foreground(tcell.GetColor("#00add8")),
		"sh": tcell.StyleDefault.Foreground(tcell.GetColor("#90e051")),

	}
)
