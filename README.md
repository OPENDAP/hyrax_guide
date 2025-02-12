[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.14058553.svg)](https://doi.org/10.5281/zenodo.14058553)

# The Hyrax Guide

This repository builds documentation for the official [Hyrax Guide](https://opendap.github.io/hyrax_guide/Master_Hyrax_Guide.html), OPeNDAP's data server.

This manual describes the features and operation of the Hyrax data server, a data server developed by OPeNDAP, Inc. as a reference server for the Data Access Protocol, versions 2 and 4. the Hyrax server is modular software with a number of handlers that are loaded into a core framework based on the contents of configuration files. Each of the server’s modules provides a distinct functional capability, such as reading data from a certain kind of file, encoding data, or processing data in different ways. 


## How to Contribute
The documentation is built automatically from the source `AsciiDoc` files (`*.adoc`). To propose any change you need to create a new branch, and submit a PR with the proposed changes for review. Before submitting a new PR, we suggest to tryout to build the documentation on a local machine. Thus the minimal requirements are:
- Clone the Repository
- Install `AsciiDoctor` on your workstation (test purposes).

### Instructions
- Navigate to the root directory. `Master_Hyrax_Guide.adoc` should be there.
- Make changes (using a new branch - do not commit on `main`).
- Test the proposed changes by running on the command line
```
asciidoctor -a toc=left -a docinfo=shared Master_Hyrax_Guide.adoc
````
NOTE: In some cases there may be some errors during the build (unrelated to the new changes). Verify your changes were added correctly:
- The command above should generate a new file `Master_Hyrax_Guide.html`. You can inspect it with a brower, e.g. `open Master_Hyrax_Guide.html`.
- Add and commit the new changes, and push to Request a `Pull Request` review. Once approved, the changes should be published automatically by `Travis`.



## Notes about the meta-documentation files


Added jhrg 9/17/17
* Use `----` for the delimeters for source code
* Use `....` for the delimeters for litteral text like shell input
* Use [source,xml] as a prefix to the source blocks (change language
as needed). See info about coderay (http://coderay.rubychan.de/) for
the allowed set.

## Notes about specific adoc files

### preface.adoc

If we use the book format, we can have a preface and
should move the acknowledgements from Hyrax.adoc to there (I think)
along with other text like, this is why Hyrax exists and/or other
stuff that one usually finds in a Preface.

### Master\_Hyrax\_Guide.adoc

This is the main document for the whole manual. It now uses _include_
directives in place of _link_s. There are notes in the file about
building the manual as a multipart book. There other notes about
missing content sections (like how to install the BES or start the
OLFS).

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

### Overview

#### Hyrax.adoc

This is the source of the overview text. It has some notes about
  changes to the presentation of the overview. I think the _OPeNDAP
  Hyrax development is sponsored by_ section should be in the
  acknowledgements subsection of the (now empty) Preface.

### Installation

#### Master\_Hyrax\_OLFS\_Installation.adoc

No notes except that this contains a link to the vanished
  BES_Installation file.

### Configuration

#### Master\_Hyrax\_Configuration.adoc

A set of includes; see below.

#### Hyrax\_Configuration.adoc

Included by Master\_Hyrax\_Configuration.adoc

#### Hyrax\_BES\_Configuration.adoc

Included by Master\_Hyrax\_Configuration.adoc. Also art of
  _Troubleshooting_

#### Hyrax\_OLFS\_Configuration.adoc

Included by Master_Hyrax_Configuration.adoc

####
Hyrax\_Configuring\_The\_OLFS\_To\_Work\_With\_Multiple\_BES's.adoc

Included by Master_Hyrax_Configuration.adoc

#### Hyrax\_Logging\_Configuration.adoc

Included by Master_Hyrax_Configuration.adoc

#### Hyrax\_THREDDS\_Configuration.adoc

Included by Master_Hyrax_Configuration.adoc

#### Master\_Hyrax\_Customizing\_Hyrax.adoc

Part of the _Configuration_ section

#### Master\_Hyrax\_Apache\_Integration.adoc

Part of _Configuration_

### Operation

#### Hyrax\_Starting\_and\_stopping\_the\_BES.adoc

No includes or notes. Part of _Operation_

#### Master\_Hyrax\_Administrators\_Interface.adoc

Part of _Operation_

### Security

#### Master\_Hyrax\_Secure\_Installation\_Guidelines.adoc

Part of _Security_

#### Master\_Hyrax\_User\_Authentication.adoc

Part of _Security_

### Troubleshooting

#### Master\_Troubleshooting.adoc

includes files...

#### Hyrax\_BES\_Client\_commands.adoc

Part of _Troubleshooting_ Think about moving this to Appendix E and
adding text in Running bescmdln that says, "For a full listing of the
commands, see..."

### Hyrax\_Running\_bescmdln.adoc

Part of _Troubleshooting_

#### BES\_How\_to\_Debug\_the\_BES.adoc

Part of _Troubleshooting_

### Appendices

#### Master\_Hyrax\_WMS.adoc

Appendix A, does not include files.

#### Master\_Handlers.adoc

Appendix B; includes all of the handler documentation files

#### Master\_Aggregation.adoc

Appendix C; includes all of the files about aggreation.

#### Master\_Hyrax\_Sample\_BES\_Installations.adoc

#### Master\_Server\_Side\_Processing\_Functions.adoc

Appendix D; no includes

#### BES\_XML\_Commands.adoc 

Appendix E.

This needs significant work in both presentation and
content. We need to decide how to fix the TOC it uses. We also need to
add information on the DAP commands, since they are missing.

Also, we might move the BES Client Commands and text from
Troubleshooting to here and then refer to the appendix in the text there.

## Unused files

In the aggreagtion directory:
* Use\_cases\_for\_swath\_and\_time\_series\_aggregation.adoc -
  Somwhow this is actually an HTML file.
* THREDDS\_using\_XSLT.adoc

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
