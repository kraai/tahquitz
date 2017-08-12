\pdfminorversion=4 % force pdf 1.4 output; http://tex.stackexchange.com/questions/95973/is-pdftex-1-40-13-outputting-malformed-pdfs

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tahquitz}

\LoadClass[11pt]{book}
% Note that 11 pt does work with pdflatex, even though 11 pt is not one of the sizes
% of CM. I don't know whether it scales up 10 pt or scales down 12 pt, but anyway, it
% works.

%===============================================
\usepackage{graphicx,url}
%-----------------------------------
\usepackage{geometry} % https://www.sharelatex.com/learn/Page_size_and_margins
\geometry{margin=0.75in}
%-----------------------------------
\usepackage{tocloft}
\renewcommand\numberline[1]{} % https://tex.stackexchange.com/questions/218663/remove-section-number-from-table-of-contents
%===============================================
\setlength{\parindent}{0pt}
\parskip 0pt
\pagestyle{plain} % https://tex.stackexchange.com/questions/120746/removing-headers-keeping-page-numbers-in-the-same-time
%-----------------------------------
% https://stackoverflow.com/questions/38292590/remove-section-numbers-latex
\makeatletter
\renewcommand{\@seccntformat}[1]{}
\makeatother
%-----------------------------------
\newcommand{\pitch}[1]{\textbf{P#1}.}
\newcommand{\variation}[1]{\textit{Var #1\/}:}
%===============================================
\newcommand{\myfooter}{\hfill\footnotesize{Description by Ben Crowell, \url{github.com/bcrowell/tahquitz}}}
\newcommand{\climb}[2]{\vfill\myfooter\pagebreak\section{#1 (#2)}}
