all: Arc-small-iPhone-3.5-inch.pdf Arc-small-iPhone-4-inch.pdf
.PHONY: all clean

clean:
	rm Arc-small-iPhone-3.5-inch.pdf Arc-small-iPhone-4-inch.pdf

Arc-small-iPhone-3.5-inch.pdf: Arc-small-iPhone-3.5-inch.ps Arc-iPhone.ps
Arc-small-iPhone-4-inch.pdf: Arc-small-iPhone-4-inch.ps Arc-iPhone.ps
%.pdf: %.ps
	pstopdf $< -o $@
