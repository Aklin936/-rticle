\NeedsTeXFormat{LaTeX2e}[1994/12/01]

\ProvidesClass{pmi}%KEEP DATE UP-TO-DATE
[2018/07/06 Scientific journal published by https://cs.msu.ru]

\LoadClass[a4paper, russian]{extarticle}

\RequirePackage{inputenc}
\RequirePackage[russian]{babel}
\RequirePackage{url}
\RequirePackage{cite}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{amscd}
\RequirePackage{bm}
\RequirePackage{graphicx}
\RequirePackage[perpage,symbol*]{footmisc}
\RequirePackage{bigstrut}
\RequirePackage{placeins}

\RequirePackage{caption}
\captionsetup[table]{labelsep=period,name={\CYRT \cyra \cyrb \cyrl .}}
\captionsetup[figure]{labelsep=period,name={\CYRR \cyri \cyrs .}}

\RequirePackage[a4paper]{geometry}
\geometry{verbose,
	tmargin=2.6cm,bmargin=2.8cm,lmargin=2.6cm,rmargin=2.6cm,footskip=0.8cm}

\newif\if@opt@pscyr

\DeclareOption{pscyr}{\@opt@pscyrtrue}
\ProcessOptions\relax

\if@opt@pscyr
\RequirePackage{mathptmx}
\RequirePackage{pscyr}
\renewcommand{\rmdefault}{ftm}
\renewcommand{\sfdefault}{far}
\fi

% Footnotes
\RequirePackage{footnote}
\RequirePackage{footmisc}
\renewcommand{\thefootnote}{\arabic{footnote}}
\newcommand{\footnoteast}[1]{%
\let\oldthefootnote=\thefootnote%
\setcounter{footnote}{0}%
\renewcommand{\thefootnote}{\fnsymbol{footnote}}%
\footnote{#1}%
\let\thefootnote=\oldthefootnote%
}

\renewenvironment{proof}{\noindent\textbf{\proofname.}}{}

\renewcommand{\@oddfoot}{\hfil\footnotesize{\thepage}\hfil}
\renewcommand{\Large}{\fontsize{18pt}{21pt}\selectfont}
\renewcommand{\large}{\fontsize{16pt}{18.6pt}\selectfont}
\renewcommand{\footnotesize}{\fontsize{12pt}{13.89pt}\selectfont}
\renewcommand{\normalsize}{%
\fontsize{14pt}{16.05pt}\selectfont%
\abovedisplayskip 4\p@ \@plus2\p@ \@minus4\p@
\abovedisplayshortskip \z@ \@plus3\p@
\belowdisplayshortskip 2\p@ \@plus3\p@ \@minus2\p@
\belowdisplayskip \abovedisplayskip
\let\@listi\@listI}

\parindent=1.25cm

\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000
\binoppenalty=10000
\relpenalty=10000

% Environments
\theoremstyle{plain}
\newtheorem{theorem}{\CYRT \cyre \cyro \cyrr \cyre \cyrm \cyra }
\newtheorem{lemma}{\CYRL \cyre \cyrm \cyrm \cyra }
\newtheorem{remark}{\CYRZ \cyra \cyrm \cyre \cyrch \cyra \cyrn \cyri \cyre }
\newtheorem*{remark*}{\CYRZ \cyra \cyrm \cyre \cyrch \cyra \cyrn \cyri \cyre }
\newtheorem{proposition}{\CYRU \cyrt \cyrv \cyre \cyrr \cyrzh \cyrd \cyre \cyrn \cyri \cyre }
\newtheorem{corollary}{\CYRS \cyrl \cyre \cyrd \cyrs \cyrt \cyrv \cyri \cyre }
\newtheorem*{corollary*}{\CYRS \cyrl \cyre \cyrd \cyrs \cyrt \cyrv \cyri \cyre }

\theoremstyle{definition}
\newtheorem{definition}{\CYRO \cyrp \cyrr \cyre \cyrd \cyre \cyrl \cyre \cyrn \cyri \cyre }
\newtheorem*{definition*}{\CYRO \cyrp \cyrr \cyre \cyrd \cyre \cyrl \cyre \cyrn \cyri \cyre }

% Hyphenation for math operations in text formulas
\newcommand*{\HM}[1]{#1\nobreak\discretionary{}%
{\hbox{$\mathsurround=0pt #1$}}{}}

\renewcommand{\leq}{\leqslant}
\renewcommand{\geq}{\geqslant}

\newcommand{\pmiemptyspace}{%
\vspace*{.15cm}\vspace*{30.8pt}}%~16.05pt*2

\newcommand{\pmiparttitle}[1]{%
\noindent\raisebox{1ex}[0pt][0pt]{%
\parbox{\textwidth}{\Large\sffamily\bfseries\itshape\centering #1}}
\raisebox{.5ex}[0pt][0pt]{\rule{\textwidth}{0.6pt}}%
\pmiemptyspace}

\newcommand{\pmiauthors}[1]{%
{\large\rmfamily\bfseries\itshape%
\centering\leftskip=.63cm plus 1fil%
#1\par}\vspace{6pt}}

\newcommand{\pmititle}[2]{%
{\large\sffamily\bfseries%
\centering\leftskip=.63cm plus 1fil%
#1\footnoteast{#2}\par}\vspace{7.2pt}}

\newcommand{\pmisection}[1]{%
\@startsection{section}{2}{\z@}{6pt}{6pt}{\normalsize\sffamily}*%
{\centering#1}}

\newenvironment{pmireferences}{
\pmisection{\CYRL \cyri \cyrt \cyre \cyrr \cyra \cyrt \cyru \cyrr \cyra }
\begin{enumerate}
\sloppy
}{
\end{enumerate}
}

% vim:ts=4 sw=4 tw=76 cc=77
