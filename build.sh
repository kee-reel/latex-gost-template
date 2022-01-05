
# Pdflatex
PDFLATEX='pdflatex -interaction=nonstopmode -shell-escape -file-line-error'
GREP='grep ".*:[0-9]*:.*"' # показывает на выходе только ошибки

# Файлы/Папки
MAINTEX="$1-main"
TARGET_PATH="$1.pdf"
if [[ -n $2 ]]; then
	TARGET_PATH=$2
fi

# Сборка latex
cd tex
$PDFLATEX $MAINTEX
cp $MAINTEX.pdf ../$TARGET_PATH
rm $MAINTEX.pdf *.aux
