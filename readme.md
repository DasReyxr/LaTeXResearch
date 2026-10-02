# LaTex Setup
**Extensions installed**
- LaTeX Utilities
- LaTex Workshop

**Extra Extensions**
- Python
- Jupyter Notebooks

## Pasting Images with LaTex
I have configured the LaTeX Utilities extension to work with LaTex. The configuration is as follows:
```json
{
    "latex-utilities.formattedPaste.useAsDefault": true,
    "latex-utilities.formattedPaste.image.template": "\\begin{figure}[h]\n    \\centering\n    \\includegraphics[width=0.8\\textwidth]{src/${imageFilePath}}\n    \\caption{${imageFileNameWithoutExt}}\n    \\label{fig:${imageFileNameWithoutExt}}\n\\end{figure}",
    "latex-utilities.formattedPaste.imagePathOverride": "${currentFileDir}/src",

    "latex-workshop.latex.autoBuild.cleanAndRetry.enabled": true,
    "latex-workshop.latex.autoBuild.run": "onSave",
    "latex-workshop.latex.autoClean.run": "onBuilt",

}
```
Located on the file [settings.json](.vscode/settings.json)