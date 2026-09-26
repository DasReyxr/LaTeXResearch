# LaTex Setup
**Extensions installed**
- LaTeX Utilities
- LaTex Workshop
- Paste Image
**Extra Extensions**
- Python
- Jupyter Notebooks

## Paste Image with LaTex
I have configured the Paste Image extension to work with LaTex. The configuration is as follows:
```json
{
    "pasteImage.path": "${currentFileDir}/src",
    "pasteImage.forceUnixStyleSeparator": true,
    "pasteImage.showFilePathConfirmInputBox": true,
    "pasteImage.basePath": "${currentFileDir}/src",
    "pasteImage.filePathConfirmInputBoxMode": "onlyName",
    "pasteImage.insertPattern": "\\begin{figure}[h]\n    \\centering\n    \\includegraphics[width=0.8\\textwidth]{src/${imageFileNameWithoutExt}}\n    \\caption{${imageFileNameWithoutExt}}\n    \\label{fig:${imageFilePath}}\n\\end{figure}",

}
```
Located on the file [settings.json](.vscode/settings.json)