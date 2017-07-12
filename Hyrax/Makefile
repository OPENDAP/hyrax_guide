
# ASCIIDOC = asciidoc
ASCIIDOC = asciidoctor

SOURCES = Master_Hyrax_Overview.adoc \
Master_Hyrax_OLFS_Installation.adoc \
Master_Hyrax_Configuration.adoc \
Master_Hyrax_Customizing_Hyrax.adoc \
Master_Hyrax_Apache_Integration.adoc \
Master_Hyrax_Secure_Installation_Guidelines.adoc \
Master_Hyrax_User_Identification_(Authentication).adoc \
Master_Troubleshooting.adoc \
Master_Handlers.adoc \
Master_Hyrax_WMS.adoc \
Master_Aggregation.adoc \
Master_Server_Side_Processing_Functions.adoc

# Build these HTML files.
HTML = Master_Hyrax_Table_of_Contents.html \
Master_Hyrax_Overview.html \
Master_Hyrax_OLFS_Installation.html \
Master_Hyrax_Configuration.html \
Master_Hyrax_Customizing_Hyrax.html \
Master_Hyrax_Apache_Integration.html \
Master_Hyrax_Secure_Installation_Guidelines.html \
Master_Hyrax_User_Authentication.html \
Master_Troubleshooting.html \
Master_Handlers.html \
Master_Hyrax_WMS.html \
Master_Aggregation.html \
Master_Server_Side_Processing_Functions.html

html: $(HTML)

clean:
	-rm $(HTML)

%.html : %.adoc
	$(ASCIIDOC) -b html5 $<


