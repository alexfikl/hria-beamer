TEXMK := "latexmk"
TEXOUTDIR := "latex.out"
TEXFLAGS := "-pdflua -output-directory=" + TEXOUTDIR

_default:
    @just --list

[private]
pdf basename:
    {{ TEXMK }} {{ TEXFLAGS }} {{ basename }}.tex
    @cp {{ TEXOUTDIR }}/{{ basename }}.pdf .

[doc("Compile template example (requires assets)")]
template:
    @just pdf template

[doc("Compile image of example file (used in README)")]
image: template
    @rm -rf images/template-*.png
    magick \
        -verbose \
        -density 300 \
        template.pdf[0-5,12-13] \
        -quality 100 \
        -sharpen 0x1.0 \
        '{{ TEXOUTDIR }}/template-%02d.png'
    montage {{ TEXOUTDIR }}/template-*.png \
        -border 1 -tile 2x4 -geometry 1000x \
        images/template.png

[doc("Remove all compilation files")]
clean:
    rm -rf {{ TEXOUTDIR }} images/{{ TEXOUTDIR }}
    rm -rf *.aux *.log *.out

[doc("Remove all generated files")]
purge: clean
    rm -rf *.pdf images/*.pdf images/template.png
