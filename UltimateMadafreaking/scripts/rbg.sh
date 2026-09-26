#!/bin/bash
#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: rbg <nombre>"
    exit 1
fi

INPUT="$1.png"
TEMP="$1.out.png"

rembg i "$INPUT" "$TEMP"

# if [ $? -eq 0 ]; then
#     mv "$TEMP" "$INPUT"
#     echo "Procesado: $INPUT"
# else
#     echo "Error al procesar $INPUT"
#     rm -f "$TEMP"
#     exit 1
# fi
# mkdir -p ~/.local/bin
# cp rbg.sh ~/.local/bin/rbg
# chmod +x ~/.local/bin/rbg

# echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
# source ~/.zshrc