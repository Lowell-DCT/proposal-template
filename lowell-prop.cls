% lowell-prop.cls - modified CTIO STY file for use at Lowell Observatory.

% First, identifying information about this style file.
% Note that this is derived from but not identical to the
% KPNO kpnoprop.sty file
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lowell-prop}[2017/01/03 Lowell Observatory DCT Observing Proposal]
\LoadClass[11pt]{article}

% Page design/layout macros.  Page sizes are at the end of the file.

\RequirePackage{amsmath}
\RequirePackage{setspace}
\setstretch{0.98}      % Tighten up baselines a little.

\def\telescopes#1{\gdef\@tele{#1}} \telescopes{}

\def\prop@head{Lowell Observatory\\\@tele\ Observing Proposal}

\def\revtex@ver{1.5.0}		% Version number of this file.
\def\revtex@date{2017-01-03}	% Revision date.

\def\revtex@pageid{\xdef\@thefnmark{\null}
   \footnotesize{Lowell Observatory DCT proposal\space
   \LaTeX\ macros v\revtex@ver \space (Released \revtex@date)}}

\def\deg{\ifmmode^\circ\else$^\circ$\fi}
\def\micron{\mbox{$\mu$m}}% 
\def\fdg{\mbox{$.\!\!^\circ$}}% 
\def\farcm{ \mbox{% 
  \kern  0.13ex.% 
  \kern -0.95ex\raisebox{.9ex}{\scriptsize$\prime$}% 
  \kern -0.1ex% 
 }% 
}
\def\farcs{ \mbox{% 
  \kern  0.13ex.% 
  \kern -0.95ex\raisebox{.9ex}{\scriptsize$\prime\prime$}% 
  \kern -0.1ex% 
 }% 
}

\newcommand{\MDtag}{DCTPMD}  % short for DCTPROPMETADATA
\newcommand\MDstart[1]{\MDtag-#1-START}
\newcommand\MDend[1]{\MDtag-#1-END}
\def\HMDIallCoIinfo{}  % will build up the CoI metadata tags in this

% \hiddenMetaDataItem takes two arguments:  tag_name, data
%      e.g.:    PI_Name,  Jane Doe
\newcommand{\hiddenMetaDataItem}[2]{\rlap{\scalebox{.05}{\texttt{\tiny{\MDstart{#1} #2 \MDend{#1}}}}}}

\newcommand{\HMDILaTeXdate}{\hiddenMetaDataItem{LaTeXdate}{\today}}
\newcommand{\HMDItitle}{\hiddenMetaDataItem{title}{\MDtitle}}
\newcommand{\HMDIPIname}{\hiddenMetaDataItem{PIname}{\MDPIname}}
\newcommand{\HMDIPIaffiliation}{\hiddenMetaDataItem{PIaffiliation}{\MDPIaffiliation}}
\newcommand{\HMDIPIemail}{\hiddenMetaDataItem{PIemail}{\MDPIemail}}
\newcommand{\HMDIthesis}{\hiddenMetaDataItem{thesis}{\MDthesis}}
\newcommand{\HMDITCO}{\hiddenMetaDataItem{TCO}{\MDTCOflag\ \MDTCOtext}}

\newcommand{\HMDIPIinfo}{\HMDIPIname\HMDIPIaffiliation\HMDIPIemail}
\newcommand{\HMDIallCoI}{\hiddenMetaDataItem{CoIs}{\HMDIallCoIinfo}}

% if need to edit these observing run metadata lines, delete all but first, edit and then copy-and-paste and do a search-and-replace to get back to having obsA,obsB,obsC...I
\newcommand{\HMDIobsA}{\@ifundefined{obsA@inst}{}{\hiddenMetaDataItem{RUNobsA}{\hiddenMetaDataItem{INSTRUMENT}{\obsA@inst}\hiddenMetaDataItem{REMOTEREQUEST}{\obsA@remobs}\hiddenMetaDataItem{NUMFIRSTHALFNIGHTS}{\obsA@numfirsthalfnights}\hiddenMetaDataItem{NUMSECONDHALFNIGHTS}{\obsA@numsecondhalfnights}\hiddenMetaDataItem{MOONBRIGHTNESS}{\obsA@moonbrightness}\hiddenMetaDataItem{OPTIMALDATES}{\obsA@optdates}\hiddenMetaDataItem{ACCEPTABLEDATES}{\obsA@accdates}\hiddenMetaDataItem{WHOLENIGHTS}{\obsA@wholenights}}}}
\newcommand{\HMDIobsB}{\@ifundefined{obsB@inst}{}{\hiddenMetaDataItem{RUNobsB}{\hiddenMetaDataItem{INSTRUMENT}{\obsB@inst}\hiddenMetaDataItem{REMOTEREQUEST}{\obsB@remobs}\hiddenMetaDataItem{NUMFIRSTHALFNIGHTS}{\obsB@numfirsthalfnights}\hiddenMetaDataItem{NUMSECONDHALFNIGHTS}{\obsB@numsecondhalfnights}\hiddenMetaDataItem{MOONBRIGHTNESS}{\obsB@moonbrightness}\hiddenMetaDataItem{OPTIMALDATES}{\obsB@optdates}\hiddenMetaDataItem{ACCEPTABLEDATES}{\obsB@accdates}\hiddenMetaDataItem{WHOLENIGHTS}{\obsB@wholenights}}}}
\newcommand{\HMDIobsC}{\@ifundefined{obsC@inst}{}{\hiddenMetaDataItem{RUNobsC}{\hiddenMetaDataItem{INSTRUMENT}{\obsC@inst}\hiddenMetaDataItem{REMOTEREQUEST}{\obsC@remobs}\hiddenMetaDataItem{NUMFIRSTHALFNIGHTS}{\obsC@numfirsthalfnights}\hiddenMetaDataItem{NUMSECONDHALFNIGHTS}{\obsC@numsecondhalfnights}\hiddenMetaDataItem{MOONBRIGHTNESS}{\obsC@moonbrightness}\hiddenMetaDataItem{OPTIMALDATES}{\obsC@optdates}\hiddenMetaDataItem{ACCEPTABLEDATES}{\obsC@accdates}\hiddenMetaDataItem{WHOLENIGHTS}{\obsC@wholenights}}}}
\newcommand{\HMDIobsD}{\@ifundefined{obsD@inst}{}{\hiddenMetaDataItem{RUNobsD}{\hiddenMetaDataItem{INSTRUMENT}{\obsD@inst}\hiddenMetaDataItem{REMOTEREQUEST}{\obsD@remobs}\hiddenMetaDataItem{NUMFIRSTHALFNIGHTS}{\obsD@numfirsthalfnights}\hiddenMetaDataItem{NUMSECONDHALFNIGHTS}{\obsD@numsecondhalfnights}\hiddenMetaDataItem{MOONBRIGHTNESS}{\obsD@moonbrightness}\hiddenMetaDataItem{OPTIMALDATES}{\obsD@optdates}\hiddenMetaDataItem{ACCEPTABLEDATES}{\obsD@accdates}\hiddenMetaDataItem{WHOLENIGHTS}{\obsD@wholenights}}}}
\newcommand{\HMDIobsE}{\@ifundefined{obsE@inst}{}{\hiddenMetaDataItem{RUNobsE}{\hiddenMetaDataItem{INSTRUMENT}{\obsE@inst}\hiddenMetaDataItem{REMOTEREQUEST}{\obsE@remobs}\hiddenMetaDataItem{NUMFIRSTHALFNIGHTS}{\obsE@numfirsthalfnights}\hiddenMetaDataItem{NUMSECONDHALFNIGHTS}{\obsE@numsecondhalfnights}\hiddenMetaDataItem{MOONBRIGHTNESS}{\obsE@moonbrightness}\hiddenMetaDataItem{OPTIMALDATES}{\obsE@optdates}\hiddenMetaDataItem{ACCEPTABLEDATES}{\obsE@accdates}\hiddenMetaDataItem{WHOLENIGHTS}{\obsE@wholenights}}}}
\newcommand{\HMDIobsF}{\@ifundefined{obsF@inst}{}{\hiddenMetaDataItem{RUNobsF}{\hiddenMetaDataItem{INSTRUMENT}{\obsF@inst}\hiddenMetaDataItem{REMOTEREQUEST}{\obsF@remobs}\hiddenMetaDataItem{NUMFIRSTHALFNIGHTS}{\obsF@numfirsthalfnights}\hiddenMetaDataItem{NUMSECONDHALFNIGHTS}{\obsF@numsecondhalfnights}\hiddenMetaDataItem{MOONBRIGHTNESS}{\obsF@moonbrightness}\hiddenMetaDataItem{OPTIMALDATES}{\obsF@optdates}\hiddenMetaDataItem{ACCEPTABLEDATES}{\obsF@accdates}\hiddenMetaDataItem{WHOLENIGHTS}{\obsF@wholenights}}}}
\newcommand{\HMDIobsG}{\@ifundefined{obsG@inst}{}{\hiddenMetaDataItem{RUNobsG}{\hiddenMetaDataItem{INSTRUMENT}{\obsG@inst}\hiddenMetaDataItem{REMOTEREQUEST}{\obsG@remobs}\hiddenMetaDataItem{NUMFIRSTHALFNIGHTS}{\obsG@numfirsthalfnights}\hiddenMetaDataItem{NUMSECONDHALFNIGHTS}{\obsG@numsecondhalfnights}\hiddenMetaDataItem{MOONBRIGHTNESS}{\obsG@moonbrightness}\hiddenMetaDataItem{OPTIMALDATES}{\obsG@optdates}\hiddenMetaDataItem{ACCEPTABLEDATES}{\obsG@accdates}\hiddenMetaDataItem{WHOLENIGHTS}{\obsG@wholenights}}}}
\newcommand{\HMDIobsH}{\@ifundefined{obsH@inst}{}{\hiddenMetaDataItem{RUNobsH}{\hiddenMetaDataItem{INSTRUMENT}{\obsH@inst}\hiddenMetaDataItem{REMOTEREQUEST}{\obsH@remobs}\hiddenMetaDataItem{NUMFIRSTHALFNIGHTS}{\obsH@numfirsthalfnights}\hiddenMetaDataItem{NUMSECONDHALFNIGHTS}{\obsH@numsecondhalfnights}\hiddenMetaDataItem{MOONBRIGHTNESS}{\obsH@moonbrightness}\hiddenMetaDataItem{OPTIMALDATES}{\obsH@optdates}\hiddenMetaDataItem{ACCEPTABLEDATES}{\obsH@accdates}\hiddenMetaDataItem{WHOLENIGHTS}{\obsH@wholenights}}}}
\newcommand{\HMDIobsI}{\@ifundefined{obsI@inst}{}{\hiddenMetaDataItem{RUNobsI}{\hiddenMetaDataItem{INSTRUMENT}{\obsI@inst}\hiddenMetaDataItem{REMOTEREQUEST}{\obsI@remobs}\hiddenMetaDataItem{NUMFIRSTHALFNIGHTS}{\obsI@numfirsthalfnights}\hiddenMetaDataItem{NUMSECONDHALFNIGHTS}{\obsI@numsecondhalfnights}\hiddenMetaDataItem{MOONBRIGHTNESS}{\obsI@moonbrightness}\hiddenMetaDataItem{OPTIMALDATES}{\obsI@optdates}\hiddenMetaDataItem{ACCEPTABLEDATES}{\obsI@accdates}\hiddenMetaDataItem{WHOLENIGHTS}{\obsI@wholenights}}}}
\newcommand{\HMDIobsJ}{\@ifundefined{obsJ@inst}{}{\hiddenMetaDataItem{RUNobsJ}{\hiddenMetaDataItem{INSTRUMENT}{\obsJ@inst}\hiddenMetaDataItem{REMOTEREQUEST}{\obsJ@remobs}\hiddenMetaDataItem{NUMFIRSTHALFNIGHTS}{\obsJ@numfirsthalfnights}\hiddenMetaDataItem{NUMSECONDHALFNIGHTS}{\obsJ@numsecondhalfnights}\hiddenMetaDataItem{MOONBRIGHTNESS}{\obsJ@moonbrightness}\hiddenMetaDataItem{OPTIMALDATES}{\obsJ@optdates}\hiddenMetaDataItem{ACCEPTABLEDATES}{\obsJ@accdates}\hiddenMetaDataItem{WHOLENIGHTS}{\obsJ@wholenights}}}}

\newcommand{\HMDIallObsRuns}{\HMDIobsA\HMDIobsB\HMDIobsC\HMDIobsD\HMDIobsE\HMDIobsF\HMDIobsG\HMDIobsH\HMDIobsI\HMDIobsJ}


% in following line the \hiddenMetaDataItem's need to have no spaces or returns 
% between them to avoid messing up the width of the ruled line that hides the text.
\newcommand{\hiddenMetaData}{\HMDILaTeXdate\HMDItitle\HMDIPIinfo\HMDIallCoI\HMDIthesis\HMDITCO\HMDIallObsRuns}

\let\ltx@enddoc=\enddocument
\def\enddocument{\vfill
%\noindent\makebox[\linewidth]{\hiddenMetaData\rule{\textwidth}{0.75pt}}
%\newline
%\revtex@pageid\ltx@enddoc}
\ltx@enddoc}

\newdimen\prop@idboxwidth

\def\prop@idbox{\prop@idboxwidth\textwidth
    \advance\prop@idboxwidth by-2.3\fboxsep
    \fbox{\hbox to\prop@idboxwidth{
    {\it Date:\/} \today\hfill}}}

\def\ques@font{\it}
\def\instruct@font{\small\sl}

\def\title#1{\null\vspace{-2\headheight}\vspace{-\headsep}
    \begin{center}\large\bf\prop@head\end{center}\prop@idbox\par
    \vspace*{.2in}
    \def\@tempa{#1}\ifx\@empty\@tempa
    \makebox[\textwidth]{\large{\bf Title:}}\par
    \else{\large{\bf Title:} \@tempa}\fi
    \edef\foo{#1}
    \global\let\MDtitle\foo}


% Observer identification.  These items are buffered so that they can be
% specified in any order, subject only to the restriction that the observer
% name be given first.  The same commands are used to identify the PI as
% well as the co-investigators; the formatting is controlled separately,
% and differences arise in the use of LaTeX environments, below.
%
% Each member of the observing team is identified with several bits of
% information.
%
%    \name{OBSERVER NAME}
%    \affiliation{AFFILIATION}
%    \emailaddress{EMAIL ADDRESS}
%

\def\name#1{\gdef\obs@name{#1}\global\@namedef{obs\@Alph{\c@numAuthors}@name}{#1}}
\def\affiliation#1{\gdef\obs@affiliation{#1}}
\def\emailaddress#1{\gdef\obs@email{#1}}

\def\clear@obs{\gdef\obs@name{}\gdef\obs@affiliation{}\gdef\obs@email{}
}

% Formatting of PI and CO-I data are controlled by the next two macros.

\def\yn@rule{\rule{0.3in}{0.4pt}}
\newcount\@maxNumAuthors \@maxNumAuthors=5

\def\prt@coiblock{\begin{tabbing}
    \makebox[.25\textwidth]{\null}\=\makebox[.25\textwidth]{\null}\=
    \makebox[.25\textwidth]{\null}\=\kill
    \hbox to1\textwidth{\obs@tag\space\obs@name\hfill\obs@affiliation\space(\obs@email)}
    \end{tabbing}}

\def\fullAuthorList{}

% Principal investigator and co-investigator environments.

\newcounter{numAuthors}
\def\obs@tag{{\bf CoI:}}


\newenvironment{PI}{\clear@obs\stepcounter{numAuthors}}{\def\obs@tag{{\bf PI:}}\prt@coiblock
   \edef\foo{\fullAuthorList PI: \obs@name \hfill \obs@affiliation \hfill Email: \obs@email \break}
   \global\let\fullAuthorList\foo
   \edef\foo{\obs@name}
   \global\let\MDPIname\foo
   \edef\foo{\obs@affiliation}
   \global\let\MDPIaffiliation\foo
   \edef\foo{\obs@email}
   \global\let\MDPIemail\foo
    }

\newenvironment{CoI}{\clear@obs\stepcounter{numAuthors}}{
  \ifnum\c@numAuthors>\@maxNumAuthors
  \else
  \vspace*{-5ex}\prt@coiblock
  \fi
  \edef\foo{\fullAuthorList CoI: \obs@name \hfill \obs@affiliation \hfill Email: \obs@email \break}
  \global\let\fullAuthorList\foo
  \edef\foo{\HMDIallCoIinfo \MDstart{CoI\thenumAuthors} \MDstart{name} \obs@name\ \MDend{name} \MDstart{affiliation} \obs@affiliation\ \MDend{affiliation} \MDstart{Email} \obs@email\ \MDend{Email} \MDend{CoI\thenumAuthors}}
  \global\let\HMDIallCoIinfo\foo
  }
    
\newenvironment{OverflowFromCoverPage}{
    \ifnum\c@numAuthors>\@maxNumAuthors
        \def\needoverflowpage{True}
    \fi

    \@ifundefined{obsD@inst}{}{\def\needoverflowpage{True}}

    \@ifundefined{needoverflowpage}{}{\newpage}

    \ifnum\c@numAuthors>\@maxNumAuthors
        \hfill {\bf Complete list of investigators} \hfill \break
        \fullAuthorList
    \fi 

    \@ifundefined{obsD@inst}{}{\prt@overflowobsruns}

    \@ifundefined{needoverflowpage}{}{\newpage}
}

\def\chk@setblank#1{\def\@kptmpa{#1}\ifx\@empty\@kptmpa
    \def\@kptmpa{\yn@rule}\fi\mbox{\@kptmpa}}

\def\chk@setblankthreelines#1{\def\@kptmpa{#1}\ifx\@empty\@kptmpa
   \def\@kptmpa{\rule{\textwidth}{0.4pt}}\fi
   \parbox[b][1cm][t]{\textwidth}{\@kptmpa}}

\def\chk@setblankoneline#1{\def\@kptmpa{#1}\ifx\@empty\@kptmpa
    \def\@kptmpa{\rule{\textwidth}{0.4pt}}\fi
   \par\makebox[\textwidth][l]{\@kptmpa}}

% Questions for first page.
%
%   \thesis{Y or N}

\def\MDthesis{True}
\def\thesis@head{This proposal is part of a Masters or PhD thesis. \def\MDthesis{False}}

\def\observers@head{{\ques@font Observers:}}
\def\timecritical@head{{\ques@font Time Critical Observation (TCO) status requested for times/dates:}}
\def\undates@head{{\ques@font Other scheduling issues, such as dates (local MST) you cannot use for non-astronomical reasons}}

\def\thesis#1{\par$\bullet$\space\thesis@head}

\def\ObserversAndQualifications#1{\par$\bullet$\space\observers@head\par\chk@setblankthreelines{#1}}

\def\MDTCOflag{False}
\def\MDTCOtext{}
\def\TimeCriticalObs#1{\par$\bullet$\space\timecritical@head\par\chk@setblankoneline{#1}\def\MDTCOflag{True}\def\MDTCOtext{#1}}

\def\unusabledates#1{\par$\bullet$\space\undates@head\par\chk@setblankthreelines{#1}}

% Observing run environment.  This is used to describe observing parameters
% in a very succinct manner, to be presented in an abbreviated form on the
% first page.  I have chosen to use multiple \begin{obsrun}-\end{obsrun}
% groupings, as opposed to a repeating set of parameter identifying macros.

\newcounter{obsrun}
\newenvironment{obsrun}{\stepcounter{obsrun}}{}
\newenvironment{ToOrun}{\stepcounter{obsrun}}{\numfirsthalfnights{-}\numsecondhalfnights{-}\remoteobserving{-}\wholenightsrequired{-}}
\def\printCoverPageObsRuns{\par\prt@obsruns\par}

% Observing run parameters to be specified by the investigators.
%
%   \telescope{IDENT}
%   \instrument{IDENT(S)}
%   \numfirsthalfnights{NUMBER}
%   \numsecondhalfnights{NUMBER}
%   \moonbrightness{CODE}   %  CODES are D, G, B
%   \optimaldates{RANGE}
%   \acceptabledates{RANGE}
%   \remoteobserving{YorN}

\def\telescope#1{\global\@namedef{obs\@Alph{\c@obsrun}@telid}{#1}}
\def\instrument#1{\global\@namedef{obs\@Alph{\c@obsrun}@inst}{#1}}
\def\numfirsthalfnights#1{\global\@namedef{obs\@Alph{\c@obsrun}@numfirsthalfnights}{#1}}
\def\numsecondhalfnights#1{\global\@namedef{obs\@Alph{\c@obsrun}@numsecondhalfnights}{#1}}
\def\moonbrightness#1{\global\@namedef{obs\@Alph{\c@obsrun}@moonbrightness}{#1}}
\def\optimaldates#1{\global\@namedef{obs\@Alph{\c@obsrun}@optdates}{#1}}
\def\acceptabledates#1{\global\@namedef{obs\@Alph{\c@obsrun}@accdates}{#1}}
\def\remoteobserving#1{\global\@namedef{obs\@Alph{\c@obsrun}@remobs}{#1}}
\def\wholenightsrequired#1{\global\@namedef{obs\@Alph{\c@obsrun}@wholenights}{#1}}

% following is a hack to get ToO info in right place in table
\def\ToOtype#1{\global\@namedef{obs\@Alph{\c@obsrun}@optdates}{#1 ToO}}
\def\totalhours#1{\global\@namedef{obs\@Alph{\c@obsrun}@accdates}{#1 hours}}

\def\obsrun@head{Summary of observing runs requested for this project\\{\footnotesize Use moon-brightness codes D, G, B for {\it mean} lunar illuminations of $\le$0.25, $\le$0.7, $>$0.7 }}
%and number of days from new moon: darkest $\le$ 3, dark $\le$ 7, grey $\le$ 10, bright $\le$ 14.}}

\newcommand{\stacktablehdr}[2]{$\genfrac{}{}{0pt}{}{\text{#1}}{\text{#2}}$}

\newcommand{\prt@obsruns}{\begin{center}{\bf\obsrun@head}\\[1ex]
    \begin{tabular*}{\textwidth}
        {|c|l@{\extracolsep{\fill}}c|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|}
    \multicolumn{1}{c}{Run} &
    \multicolumn{2}{l}{Instrument, detectors, gratings, filters,
    camera optics, etc.} &
    \multicolumn{1}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{\stacktablehdr{Remote}{Requested}}\vspace{.5ex}\\
    \hline
    1 & \obsA@inst && \obsA@remobs \\
    \hline
    \@ifundefined{obsB@inst}{}{2 & \obsB@inst && \obsB@remobs \\
    \hline}
    \@ifundefined{obsC@inst}{}{3 & \obsC@inst && \obsC@remobs \\
    \hline}
    \end{tabular*}\\
    \vspace{2ex}
    \begin{tabular*}{\textwidth}{|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|l|l@{\extracolsep{\fill}}c|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|}
    \multicolumn{1}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{Run} &
    \multicolumn{1}{c}{\#1$^\mathrm{st} \frac{1}{2}$} &
    \multicolumn{1}{c}{\#2$^\mathrm{nd} \frac{1}{2}$} &
    \multicolumn{1}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{\stacktablehdr{Max Moon}{Brightness}} &
    \multicolumn{1}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{Optimal Dates} &
    \multicolumn{2}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{Acceptable} &
    \multicolumn{1}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{\stacktablehdr{Whole Nights}{Required}}\vspace{.5ex}\\
    \hline
    1 & \obsA@numfirsthalfnights &\obsA@numsecondhalfnights & \obsA@moonbrightness &
        \obsA@optdates & \obsA@accdates&& \obsA@wholenights\\
    \hline
    \@ifundefined{obsB@inst}{}{2 & \obsB@numfirsthalfnights& \obsB@numsecondhalfnights & \obsB@moonbrightness &
        \obsB@optdates & \obsB@accdates&& \obsB@wholenights\\
    \hline}
    \@ifundefined{obsC@inst}{}{3 & \obsC@numfirsthalfnights &\obsC@numsecondhalfnights & \obsC@moonbrightness &
        \obsC@optdates & \obsC@accdates&& \obsC@wholenights\\
    \hline}
    \end{tabular*}
    \end{center}}

\newcommand{\prt@overflowobsruns}{\begin{center}{\bf\obsrun@head}\\[1ex]
    \begin{tabular*}{\textwidth}
        {|c|l@{\extracolsep{\fill}}c|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|}
    \multicolumn{1}{c}{Run} &
    \multicolumn{2}{l}{Instrument, detectors, gratings, filters,
    camera optics, etc.} &
    \multicolumn{1}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{ \stacktablehdr{Remote}{Requested}}\vspace{.5ex}\\
    \hline
    4 & \obsD@inst && \obsD@remobs \\
    \hline
    \@ifundefined{obsE@inst}{}{5 & \obsE@inst && \obsE@remobs \\
    \hline}
    \@ifundefined{obsF@inst}{}{6 & \obsF@inst && \obsF@remobs \\
    \hline}
    \@ifundefined{obsG@inst}{}{7 & \obsG@inst && \obsG@remobs \\
    \hline}
    \@ifundefined{obsH@inst}{}{8 & \obsH@inst && \obsH@remobs \\
    \hline}
    \@ifundefined{obsI@inst}{}{9 & \obsI@inst && \obsI@remobs \\
    \hline}
    \@ifundefined{obsJ@inst}{}{10 & \obsJ@inst && \obsJ@remobs \\
    \hline}
    \end{tabular*}\\
    \vspace{2ex}
   
    \begin{tabular*}{\textwidth}{|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|l|l@{\extracolsep{\fill}}c|@{\extracolsep{0pt}}c@{\extracolsep{0pt}}|}
    \multicolumn{1}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{Run} &
    \multicolumn{1}{c}{\#1$^\mathrm{st} \frac{1}{2}$} &
    \multicolumn{1}{c}{\#2$^\mathrm{nd} \frac{1}{2}$} &
    \multicolumn{1}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{\stacktablehdr{Max Moon}{Brightness}} &
    \multicolumn{1}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{Optimal Dates} &
    \multicolumn{2}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{Acceptable} &
    \multicolumn{1}{@{\extracolsep{0pt}}c@{\extracolsep{0pt}}}{\stacktablehdr{Whole Nights}{Required}}\vspace{.5ex}\\
    \hline
    4 & \obsD@numfirsthalfnights &\obsD@numsecondhalfnights & \obsD@moonbrightness &
        \obsD@optdates & \obsD@accdates&& \obsD@wholenights\\
    \hline
    \@ifundefined{obsE@inst}{}{5 & \obsE@numfirsthalfnights& \obsE@numsecondhalfnights & \obsE@moonbrightness &
        \obsE@optdates & \obsE@accdates&& \obsE@wholenights\\
    \hline}
    \@ifundefined{obsF@inst}{}{6 & \obsF@numfirsthalfnights& \obsF@numsecondhalfnights & \obsF@moonbrightness &
        \obsF@optdates & \obsF@accdates&& \obsF@wholenights\\
    \hline}
    \@ifundefined{obsG@inst}{}{7 & \obsG@numfirsthalfnights& \obsG@numsecondhalfnights & \obsG@moonbrightness &
        \obsG@optdates & \obsG@accdates&& \obsG@wholenights\\
    \hline}
    \@ifundefined{obsH@inst}{}{8 & \obsH@numfirsthalfnights& \obsH@numsecondhalfnights & \obsH@moonbrightness &
        \obsH@optdates & \obsH@accdates&& \obsH@wholenights\\
    \hline}
    \@ifundefined{obsI@inst}{}{9 & \obsI@numfirsthalfnights& \obsI@numsecondhalfnights & \obsI@moonbrightness &
        \obsI@optdates & \obsI@accdates&& \obsI@wholenights\\
    \hline}
    \@ifundefined{obsJ@inst}{}{10 & \obsJ@numfirsthalfnights& \obsJ@numsecondhalfnights & \obsJ@moonbrightness &
        \obsJ@optdates & \obsJ@accdates&& \obsJ@wholenights\\
    \hline}
    \end{tabular*}
    \end{center}}

\def\overflowobsrun@head{$\bullet$\space{\ques@font Additional requests regarding dates, instruments, cadence of observations, etc for observing runs} \hfill}

\def\MoreObsrunInfo#1{\overflowobsrun@head\par#1}

\def\EndOfPrimaryCoverPage{\vfill
\noindent\makebox[\linewidth]{\hiddenMetaData\rule{\textwidth}{0.75pt}}
\newline
\revtex@pageid}

% The scientific justification and the proposed observing program are
% typeset (printed) as they are specified by the author.  Specific
% observations are summarized in the "obsrun" environment (above).
%
%    \scienceJustification
%    \observingRequest

\newenvironment{references}{\subsubsection*{References}}{\relax}
\let\reference=\par

\def\propsection{\@startsection{section}{1}{\z@}
    {7pt plus 4pt minus 2pt}{-1em}{\normalsize\bf}}
\def\subsection{\@startsection{subsection}{2}{\z@}
    {-3.25ex plus -1ex minus -.2ex}{1.5ex plus .2ex}{\normalsize\bf}}
\def\justif@head{{\instruct@font  Lowell proposals limited to one page of text and figure(s); References may appear on a second page. You may use your 1 page of Science Justification as you wish, but do not alter default line spacing, margins, font size. Most proposals should consist of no more than $\sim$300 words of text and a figure. Figures should be legible and not too small. Write for a general scientific audience. Non-Lowell proposers should check with their home institution regarding page limits.
\par}}
\def\feas@head{{\instruct@font Limit to one page of text excluding target list. List objects, coordinates, magnitude/surface brightness, desired S/N, wavelength coverage \& resolution. Justify the amount of time requested as well as the specific instrument(s), configuration, \& Dark/Gray/Bright requirements. Justify any request for Time Critical Observation (TCO) status.  Justify \& explain details of any Target of Opportunity (ToO) request. If you require whole (vs.\ half) nights, explain why. Explain any other details of your observing request not fully captured on the cover page.
    \par}}

\def\removeScienceJustificationInstructions{\def\justif@head{{\instruct@font \hspace{0.1in} \par}}}
\def\removeObservingRequestInstructions{\def\feas@head{{\instruct@font \hspace{0.1in} \par}}}

\def\scienceJustification{\newpage\propsection{\fbox{Scientific Justification}}
    \justif@head}
\def\observingRequest{\clearpage\newpage\propsection{\fbox{Observing Request Details}}\feas@head}


%\RequirePackage{amstext}
%\RequirePackage[separate-uncertainty=true,range-units=single,
%  range-phrase=--,forbid-literal-units=true]{siunitx}

% common astronomical symbols
\let\sun\odot
\let\bh\bullet
\newcommand*\solarmass{\si{\solarmass}}
\newcommand*\solarluminosity{\si{\solarluminosity}}
% astrophysical units
%\DeclareSIUnit\lightspeed{$c$}
%\DeclareSIUnit\rydberg{Ry}
%\DeclareSIUnit\erg{erg}
%\DeclareSIUnit\magnitude{mag}
%\DeclareSIUnit\jansky{Jy}
%\DeclareSIUnit\gauss{G}
%\DeclareSIUnit\h{$h$}
%\DeclareSIUnit\hseven{$h$_7}
%\DeclareSIUnit\parsec{pc}
%\DeclareSIUnit\year{yr}
%\DeclareSIUnit\solarluminosity{\ensuremath{L_\sun}}
%\DeclareSIUnit\solarmass{\ensuremath{M_\sun}}
%\DeclareSIUnit\solarmassinenergy{\ensuremath{M_\sun|c^2}}
%\DeclareSIUnit\solarradius{\ensuremath{R_\sun}}
% redeclared units
%\DeclareSIUnit\arcsecond{as}
%\DeclareSIUnit\astronomicalunit{AU}
%\DeclareSIUnit\clight{\ensuremath c}
% additional unit notations
\DeclareRobustCommand\SIfrac{\@ifstar\ast@SIfracplain\ast@SIfracparen}
\newcommand*\ast@SIfracplain[1]{\begingroup\def\@tempa{#1}\ast@@SIfracplain}
\newcommand*\ast@SIfracparen[1]{\begingroup\def\@tempa{#1}\ast@@SIfracparen}
\newcommand*\ast@@SIfracplain[2][]{\frac{\@tempa}{\SI{#1}{#2}}\endgroup}
\newcommand*\ast@@SIfracparen[2][]{\biggl(\ast@@SIfracplain{#1}{#2}\biggr)}
\newcommand*\SIex[2]{#1\,\si{#2}}
% spectroscopic notation
\DeclareRobustCommand\specatom{\@ifstar\ast@atomforbid\ast@atomallow}
\DeclareRobustCommand\specline{\@ifstar\ast@lineforbid\ast@lineallow}
\newcommand*\ast@atomforbid[2]{\textnormal{[\ast@atomallow{#1}{#2}]}}
\newcommand*\ast@atomallow[2]{%
  \textnormal{#1\hskip.1em\relax\textsc{\romannumeral#2}}}
\newcommand*\ast@lineforbid[3]{%
  \textnormal{\ast@atomforbid{#1}{#2}\hskip.2em\relax#3}}
\newcommand*\ast@lineallow[3]{%
  \textnormal{\ast@atomallow{#1}{#2}\hskip.1em\relax#3}}
% term symbol
\DeclareRobustCommand\termsym{\@ifstar\ast@termodd\ast@termeven}
\newcommand*\scripts[5]{\ensuremath{
  ^{#2\vphantom0}_{#3\vphantom0}\hskip-\scriptspace{#1}
  ^{#4\vphantom0}_{#5\vphantom0}}}
\newcommand*\ast@termeven[3]{\scripts{\textup{#2}}{#1}{}{}{#3}}
\newcommand*\ast@termodd[3]{\scripts{\textup{#2}}{#1}{}{\textup o}{#3}}


% Initialization.

\textwidth 6.5in
\textheight 9.0in
\oddsidemargin \z@
\evensidemargin \z@
\marginparwidth 0.7in
\topmargin \z@
\headheight .2in
\headsep .2in
\parindent \z@
\parskip 1ex

\voffset=-0.25in
%\hoffset=-0.25in

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\thispagestyle{empty}
\rhead{Page \thepage}
\cfoot{}

\setcounter{secnumdepth}{0}
