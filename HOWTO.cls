\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pkg}[2024/09/21 HOWTO Class]

\LoadClass[a4paper]{book}

\makeindex
\usepackage{ifpdf}
\usepackage{linuxdoc-sgml}
\usepackage{qwertz}
\usepackage{url}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[colorlinks=true,urlcolor=blue,linkcolor=blue,breaklinks=true]{hyperref}
\ifpdf\pdfcompresslevel=9\fi
\usepackage{babel}
\usepackage{epsfig}
\usepackage{null}
\usepackage[explicit]{titlesec}
\usepackage{lmodern}
\usepackage{xcolor}
\usepackage[most]{tcolorbox}
\usepackage{blindtext}

\usepackage{xepersian}
\settextfont{IRNazanin}

\@newctr{footnote}[page]

\newtcolorbox{note}[1][]{
  enhanced jigsaw,
  borderline east={1pt}{0pt}{black},
  sharp corners,
  boxrule=0pt,
  fonttitle={\large\bfseries},
  coltitle={black},
  title={نکته:\ },
  attach title to upper,
  right=0pt,
  top=0pt,
  bottom=0pt,
  frame hidden,
  baseline={\tcb@height-2\kvtcb@boxsep+\baselineskip-2\lineskip},
  #1
}

\newtcolorbox{caveat}[1][]{
  enhanced jigsaw,
  borderline east={1pt}{0pt}{black},
  sharp corners,
  boxrule=0pt,
  fonttitle={\large\bfseries},
  coltitle={black},
  title={هشدار:\ },
  attach title to upper,
  right=0pt,
  top=0pt,
  bottom=0pt,
  frame hidden,
  baseline={\tcb@height-2\kvtcb@boxsep+\baselineskip-2\lineskip},
  #1
}


\newcommand\tturl{\begingroup\catcode`\#=12\relax\@tturl}
\newcommand{\@tturl}[1]{\endgroup\texttt{\url{#1}}}

\newcommand{\lre}[1]{\emph{\lr{#1}}}
\newcommand{\lrfn}[1]{\footnote{\lr{#1}}}

\newcommand\ftnt{\begingroup\catcode`\#=12\relax\@ftnt}
\newcommand{\@ftnt}[2]{\endgroup\emph{\lr{#1}}\LTRfootnote{\tturl{#2}}}

\newcommand\fftnt{\begingroup\catcode`\#=12\relax\@fftnt}
\newcommand{\@fftnt}[2]{\endgroup\emph{#1}\LTRfootnote{\tturl{#2}}}

\newcommand{\tftnt}[2]{\emph{\lr{#1}}\LTRfootnote{\lr{#2}}}
\newcommand{\tfftnt}[2]{\emph{#1}\LTRfootnote{\lr{#2}}}

