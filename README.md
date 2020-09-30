本实验手册使用XeLaTeX构建，可以在命令行中直接输入`xelatex main.tex`编译出pdf文档。

推荐使用VS Code加LaTeX WorkShop开发，整体效果如下：

![result](https://user-images.githubusercontent.com/29707503/94648284-d3ad7b80-0324-11eb-94e0-00660ef4e873.png)

LaTeX WorkShop配置如下（粘贴到`settings.json`文件中）：
```json
"latex-workshop.latex.tools": [
        {
          "name": "xelatex",
          "command": "xelatex",
          "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
          ]
        },
        {
          "name": "xelatex-with-shell-escape",
          "command": "xelatex",
          "args": [
            "--shell-escape",
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
          ]
        },
        {
          "name": "pdflatex",
          "command": "pdflatex",
          "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
          ]
        },
        {
          "name": "pdflatex-with-shell-escape",
          "command": "pdflatex",
          "args": [
            "--shell-escape",
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
          ]
        },
        {
          "name": "latexmk",
          "command": "latexmk",
          "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "-pdf",
            "%DOC%"
          ]
        },
        {
          "name": "bibtex",
          "command": "bibtex",
          "args": [
            "%DOCFILE%"
          ]
        },
        {
          "name":"makeindex",
          "command":"makeindex",
          "args":[
              "%DOCFILE%"
          ]
        },
      ],

      "latex-workshop.latex.recipes": [
        {
          "name": "PDFLaTeX",
          "tools": [
            "pdflatex"
          ]
        },
        {
          "name": "PDFLaTeX with Shell Escape",
          "tools": [
            "pdflatex-with-shell-escape"
          ]
        },
        {
          "name": "XeLaTeX",
          "tools": [
            "xelatex"
          ]
        },
        {
          "name": "XeLaTeX with Shell Escape",
          "tools": [
            "xelatex-with-shell-escape"
          ]
        },
        {
          "name": "PDFLaTeX -> BibTeX -> PDFLaTeX*2",
          "tools": [
            "pdflatex",
            "bibtex",
            "pdflatex",
            "pdflatex"
          ]
        },
        {
          "name": "XeLaTeX -> BibTeX -> XeLaTeX*2",
          "tools": [
            "xelatex",
            "bibtex",
            "xelatex",
            "xelatex"
          ]
        },
        {
          "name": "latexmk",
          "tools": [
            "latexmk"
          ]
        },
        {
          "name": "BibTeX",
          "tools": [
            "bibtex"
          ]
        },
        {
          "name":"MakeIndex",
          "tools":[
              "makeindex"
          ]
        },
      ],
```