all: Arc-iPhone-3.5-inch-USLetter.pdf Arc-iPhone-4-inch-USLetter.pdf Arc-iPhone-3.5-inch-A4.pdf Arc-iPhone-4-inch-A4.pdf
.PHONY: all clean

clean:
	rm Arc-iPhone-3.5-inch-USLetter.pdf Arc-iPhone-4-inch-USLetter.pdf Arc-iPhone-3.5-inch-A4.pdf Arc-iPhone-4-inch-A4.pdf

Arc-iPhone-3.5-inch-USLetter.pdf: Arc-iPhone-3.5-inch-USLetter.ps Arc-small-iPhone-3.5-inch.ps Arc-iPhone.ps 4up.ps
Arc-iPhone-4-inch-USLetter.pdf: Arc-iPhone-4-inch-USLetter.ps Arc-small-iPhone-4-inch.ps Arc-iPhone.ps 4up.ps
Arc-iPhone-3.5-inch-A4.pdf: Arc-iPhone-3.5-inch-A4.ps Arc-small-iPhone-3.5-inch.ps Arc-iPhone.ps 4up.ps
Arc-iPhone-4-inch-A4.pdf: Arc-iPhone-4-inch-A4.ps Arc-small-iPhone-4-inch.ps Arc-iPhone.ps 4up.ps
%.pdf: %.ps
	pstopdf $< -o $@
