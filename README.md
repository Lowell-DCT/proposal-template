# proposal-template

LaTeX proposal template package for proposals to Lowell Observatory's Discovery Channel Telescope

## Usage

Download the latest version of this package from [https://github.com/Lowell-DCT/proposal-template/archive/master.zip](https://github.com/Lowell-DCT/proposal-template/archive/master.zip).

Once unzipped, do a `make` inside the directory and, if LaTeX is installed correctly on your computer, an example proposal PDF should be generated.

## History

Developed in early 2016 by Henry Roe based on similar templates in use at KPNO/NOAO/CTIO.

2016-07-07:  Updated to shorten proposals and lessen workload on proposers & reviewers.  Changes include:
- delete abstract
- increase to 5 the number of allowed co-authors before triggering an overflow cover page
- limit science justification to one page (+ references)
- rename old "Technical Justification" section to "Observing Request Details" and clarify instructions
- delete previous use section

2016-08-04:  Updated after 2016Q3 ahead of 2016Q4
- cleaned up bunch of cruft and clarified numerous comment sections
- clarified that "thesis" refers to both Masters & PhD theses
- merged the two cover page sections of additional observing details ("\unusabledates" & "\MoreObsrunInfo") into a single section ("\MoreObsrunInfo")
- created a hidden metadata section that allows even more proposal details to be captured automatically & more reliably from submitted proposals into the scheduling system
- added `example_pull_metadata.py` showing a simple example of extracting the new metadata

Questions or comments:  email Henry Roe (hroe@lowell.edu or hroe@hroe.me).
