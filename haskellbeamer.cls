\LoadClass{beamer}

\usetheme{metropolis}
\author{Sebastian Graf, \small\texttt{sgraf1337@gmail.com}}
\institute{Karlsruhe Institute of Technology}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{babel}
\RequirePackage{booktabs}
\RequirePackage{tikz,calc,ifthen}
\RequirePackage{mathtools}
\RequirePackage[normalem]{ulem}
\RequirePackage{graphicx}
\RequirePackage{xspace}
\RequirePackage{xcolor}
\RequirePackage{minted}
\RequirePackage{realboxes}
\RequirePackage{pifont}
\RequirePackage{stmaryrd}
\RequirePackage[maxcitenames=2,backend=bibtex8,hyperref=true,style=authoryear]{biblatex}
\RequirePackage{hyperref}

\hypersetup{
  pdfdisplaydoctitle=true,
  %colorlinks=true, % use this if the boxes around links bother you ;)
  hidelinks=true,
  pdfstartpage=3,
}
\RequirePackage{hypcap} % hyperref fix
\RequirePackage[nameinlink,noabbrev,capitalise]{cleveref} % better references

%%% TikZ libraries

\usetikzlibrary{backgrounds}
\usetikzlibrary{pgffor}

% overlays
\tikzset{
  invisible/.style={opacity=0,text opacity=0},
  visible on/.style={alt={#1{}{invisible}}},
  alt/.code args={<#1>#2#3}{%
    \alt<#1>{\pgfkeysalso{#2}}{\pgfkeysalso{#3}} % \pgfkeysalso doesn't change the path
  },
  hl/.code args={<#1>}{% highlight stuff
    \alt<#1>{\pgfkeysalso{draw=alerted text.fg}}{\pgfkeysalso{}} % \pgfkeysalso doesn't change the path
  },
}

% node style

\tikzstyle{n}=[%
  fill=white,
  draw,
  circle,
  inner sep=0pt,
  minimum size=1.5cm
]

%%% Typographic defs

% From https://stackoverflow.com/a/39363004/388010
% Add a period to the end of an abbreviation unless there's one
% already, then \xspace.
\makeatletter
\DeclareRobustCommand\onedot{\futurelet\@let@token\@onedot}
\def\@onedot{\ifx\@let@token.\else.\null\fi\xspace}

\def\eg{e.g\onedot} \def\Eg{E.g\onedot}
\def\ie{i.e\onedot} \def\Ie{I.e\onedot}
\def\cf{c.f\onedot} \def\Cf{C.f\onedot}
\def\etc{etc\onedot} \def\vs{vs\onedot}
\def\wrt{w.r.t\onedot} \def\dof{d.o.f\onedot}
\def\etal{et al\onedot}
\makeatother

%%% Stuff

\newcommand{\cmark}{\ding{51}} % cross
\newcommand{\xmark}{\ding{55}} % tick

%%% Minted for syntax highlighting

\newmintinline[hs]{haskell}{}
\newminted[haskell]{haskell}{mathescape,texcomments,autogobble}

%%% Data-flow nodes

\newcommand{\dfnode}[2]{\text{$\text{\texttt{#1}}_{#2}$}}