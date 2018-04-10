# proposal-template

LaTeX proposal template package for proposals to Lowell Observatory's
Discovery Channel Telescope

## Usage

Download the latest version of this package from
[https://github.com/Lowell-DCT/proposal-template/archive/master.zip](https://github.com/Lowell-DCT/proposal-template/archive/master.zip).

Once unzipped, do a `make` inside the directory and, if LaTeX is
installed correctly on your computer, an example proposal PDF should
be generated.

## History

Developed in early 2016 by Henry Roe based on similar templates in use
at KPNO/NOAO/CTIO.
Modified start in mid 2017 by Stephen Levine.

2016-07-07: Updated to shorten proposals and lessen workload on
	    proposers & reviewers. (hroe)
Changes include:
- delete abstract
- increase to 5 the number of allowed co-authors before triggering an
  overflow cover page
- limit science justification to one page (+ references)
- rename old "Technical Justification" section to "Observing Request
  Details" and clarify instructions
- delete previous use section

2016-08-04:  Updated after 2016Q3 ahead of 2016Q4 (hroe)
- cleaned up bunch of cruft and clarified numerous comment sections
- clarified that "thesis" refers to both Masters & PhD theses
- merged the two cover page sections of additional observing details
  ("\unusabledates" & "\MoreObsrunInfo") into a single section
  ("\MoreObsrunInfo")
- created a hidden metadata section that allows even more proposal
  details to be captured automatically & more reliably from submitted
  proposals into the scheduling system
- added `example_pull_metadata.py` showing a simple example of
  extracting the new metadata

2016-09-26 (1.4.0):  Finalized updates for 2017Q1 (hroe)
- cleaned up bunch of cruft and clarified numerous comment sections
- clarified that "thesis" refers to both Masters & PhD theses
- merged the two cover page sections of additional observing details
  ("\unusabledates" & "\MoreObsrunInfo") into a single section
  ("\MoreObsrunInfo")
- created a hidden metadata section that allows even more proposal
  details to be captured automatically & more reliably from submitted
  proposals into the scheduling system
- added `example_pull_metadata.py` showing a simple example of
  extracting the new metadata

2017-01-03 (1.5.0): Finalized updates for 2017Q2 (hroe)
- moved hidden metadata section to first cover page, so that metadata
  in the PDF is still available even if user submits only the cover
  page
- clarified in instructions that users can assemble their own PDF
  using the cover page + science justification pages from a different
  source (e.g. cover page must be from the LaTeX template, but a user
  could write their Science Justification in Word and export it to PDF
  and then glue the whole thing together into a single PDF.)

2017-02-21 (1.5.1): Two bug fixes (hroe)
- the version number and date and metadata were not always printing on
  the primary cover page - FIXED
- the body text in the Scientific Justification and Observing Request
  Details were in most cases printing at very small font size - FIXED

2017-10-13 (1.5.2): Updates (sel)
- for switch to semester scheduling, with the option of quarter night
  quantum.

2018-01-06 (1.5.3): Update and bug fix (sel)
- Modified the overflow macros to add an indicator line on page 1 if
  the number of runs caused the table to overflow onto page 2.
- Fixed the overflow table format so that it is once again consistent
  with the primary table format.
- Checked consistency of instructions between cls and tex template.

Questions or comments:  email Stephen Levine (sel@lowell.edu).
