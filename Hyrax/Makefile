
ASCIIDOC = asciidoc
# ASCIIDOC = asciidoctor

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
Master_Server_Side_Processing_Functions.html \
Hyrax_Starting_and_stopping_the_BES.html

html: $(HTML)

clean:
	-rm $(HTML)

%.html : %.adoc
	$(ASCIIDOC) -d book -b html5 $<


