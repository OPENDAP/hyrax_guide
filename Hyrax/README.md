
## Notes about the meta-documentation files

**book-multi.txt** is an example of the multipart book format for
asciidoc.

**edits.txt** How I made lots of edits w/o mind-numbing manual
  searching and stuff

**link_loc.txt** Holds the current location of all the places that use
  the asciidoc _link_ macro. In most cases these should be fixed
  because they are k=links to the *.adoc files, but those won't be
  present when we build the HTML or PDF documentation files.  Instead,
  these should probably be section references (using anchors).

**note_loc.txt** I found a bunch of places where the text says,
  "Note:" in one way or another. Asciidoc has a special way of doing
  this that looks good (using 'NOTE:' with no indentation). 

**warnings.txt** Same as above, but for 'WARNING:'

## Notes about specific adoc files

**preface.adoc** If we use the book format, we can have a preface and
should move the acknowledgements from Hyrax.adoc to there (I think)
along with other text like, this is why Hyrax exists and/or other
stuff that one usually finds in a Preface.

### Files with _include_ directives
At least I think these all _include_ other files. These are mostly in
alphabetical order unless I moved stuff around because that seemed
like a good idea.

**Master\_Hyrax\_Table\_of\_Contents.adoc** This is the main document
  for the whole manual. It now uses _include_ directives in place of
  _link_s. There are notes in the file about building the manual
  as a multipart book. There other notes about missing content
  sections (like how to install the BES or start the OLFS).

I changed the title to _The Hyrax Data Server Installation and
Configuration Guide_ and it now has six sections (Overview, Installation,
Configuration, Operation, Security, and Troubleshooting) and four
appendices (WMS, handlers, Aggregation, and Server side processing).

_Issues_:
* Are these the correct sections and appendices?
* We must write/find the missing content (maybe its buried somewhere
in one of these other files)
* The Troubleshooting section and Appendices B and C are way out of
  hand in terms of the TOC listings. Modify the stuff so that it has a
  more reasonable number of level two items

**Master\_Aggregation.adoc** Appendix C; includes all of the files
  about aggreation.

**Master\_Handlers.adoc** Appendix B; this _include_s all of the
  handler documentation files

**Master\_Hyrax\_Configuration.adoc** A set of includes; see below.

**Master\_Hyrax\_Sample\_BES\_Installations.adoc**

**Master\_Hyrax\_WMS.adoc** Appendix A, does not include files.

**Master\_Server\_Side\_Processing\_Functions.adoc** Appendix D; no includes

**Master\_Troubleshooting.adoc** includes files...

#### _Master Hyrax_ files without _include_s or notes

**Master\_Hyrax\_Customizing\_Hyrax.adoc** Part of the
  _Configuration_ section

**Master\_Hyrax\_Apache\_Integration.adoc** Part of _Configuration_

**Master\_Hyrax\_Administrators\_Interface.adoc** Part of _Operation_

**Master\_Hyrax\_Secure\_Installation\_Guidelines.adoc** Part of _Security_

**Master\_Hyrax\_User\_Authentication.adoc** Part of _Security_

### Files without _include_ directives

**Hyrax.adoc** This is the source of the overview text. It has some
  notes about changes to the presentation of the overview. I think the
  _OPeNDAP Hyrax development is sponsored by_ section should be in the
  acknowledgements subsection of the (now empty) Preface.

**Master\_Hyrax\_OLFS\_Installation.adoc** No notes except that this
  contains a link to the vanished BES_Installation file.

**Hyrax\_Configuration.adoc** Included by Master_Hyrax_Configuration.adoc

**Hyrax\_BES\_Configuration.adoc** Included by
  Master_Hyrax_Configuration.adoc. Also art of _Troubleshooting_

**Hyrax\_OLFS\_Configuration.adoc** Included by Master_Hyrax_Configuration.adoc

**Hyrax\_Configuring\_The\_OLFS\_To\_Work\_With\_Multiple\_BES's.adoc** Included by Master_Hyrax_Configuration.adoc

**Hyrax\_Logging\_Configuration.adoc** Included by Master_Hyrax_Configuration.adoc

**Hyrax\_THREDDS\_Configuration.adoc** Included by
Master_Hyrax_Configuration.adoc

**Hyrax\_BES\_Client\_commands.adoc** Part of _Troubleshooting_

**Hyrax\_JSON.adoc**

**Hyrax\_Running\_bescmdln.adoc** Part of _Troubleshooting_

**Hyrax\_Starting\_and\_stopping\_the\_BES.adoc** No includes or
  notes. Part of _Operation_

**BES\_How\_to\_Debug\_the\_BES.adoc** Part of _Troubleshooting_

**THREDDS\_using\_XSLT.adoc**

## Unused files

In the aggreagtion directory:
* Use\_cases\_for\_swath\_and\_time\_series\_aggregation.adoc
* BES\_XML\_Commands.adoc

## About these files

These files are derived from the Hyrax documentation pages on
docs.OPeNDAP.org. I've extracted them from the files in
documentation/other and then grouped them into the files in this
directory and those in the sub-directories _handlers_ and
_aggregation_. The latter two hold information abut specific handlers
and the _aggregation handler_ that are bundled with the server.

The files reference images in the _documentation/images_ directory,
and those links will need to be fixed, one way or another.

I will remove the files from _documentation/other_ that are here, so
there are no duplicates.

The files that start with the prefix Master: Some are composite documents,
others are just one file. 

The files that are prefixed with Hyrax: The original files from the wiki. Some of these are 'included' by the 'Master' documents.
