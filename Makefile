
# The asciidoc application does not work as well as asciidoctor.
# 7/17/17 jhrg
# ASCIIDOC = asciidoc

HTML = *.html

ASCIIDOC = asciidoctor

all: Master_Hyrax_Guide.html

Master_Hyrax_Guide.html: *.adoc aggregation/*.adoc handlers/*.adoc

clean:
	-rm $(HTML)

%.html : %.adoc
	$(ASCIIDOC) -b html5 $<


