%%%%%%
% Template for typesetting Diploma Theses

%%%%%%
% Class Information
\def\filename{thesis_master}
\def\fileversion{1.0}
\def\filedate{2017/05/20}
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{thesis_master}[%
    \filedate\space\fileversion\space LaTeX document class.]
% Required Packages
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{fancyhdr}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}


\usepackage[greek]{babel}
\usepackage[utf8]{inputenc}


\pagestyle{fancy}

% Title Page and Front Matter
\def\@supervisor{}              \def\supervisor#1{\gdef\@supervisor{#1}}
\def\@epitropiF{}               \def\epitropiF#1{\gdef\@epitropiF{#1}}
\def\@epitropiS{}               \def\epitropiS#1{\gdef\@epitropiS{#1}}
\def\@subtitle{}                    \def\subtitle#1{\gdef\@subtitle{#1}}
\def\@translator{}              \def\translator#1{\gdef\@translator{#1}}
\def\@institution{}             \def\institution#1{\gdef\@institution{#1}}
\def\@department{}              \def\department#1{\gdef\@department{#1}}
\def\@division{}                    \def\division#1{\gdef\@division{#1}}
\def\@lab{}                             \def\lab#1{\gdef\@lab{#1}}
\def\@other{}                           \def\other#1{\gdef\@other{#1}}
\def\@dedication{}              \def\dedication#1{\def\@dedication{#1}}
\def\@uppertitleback{}      \long\def\uppertitleback#1{\def\@uppertitleback{#1}}
\def\@middletitleback{}   \long\def\middletitleback#1{\def\@middletitleback{#1}}
\def\@lowertitleback{}    \long\def\lowertitleback#1{\def\@lowertitleback{#1}}
\def\@approval{}   \long\def\approval#1{\def\@approval{#1}}
\def\@mysig{}             \long\def\mysig#1{\def\@mysig{#1}}

                          \def\url#1{\gdef\@url{\texttt{#1}}}
                          \def\TRnumber#1{\gdef\@TRnumber{#1}}
\def\@trurl{}             \def\trurl#1{\gdef\@trurl{\texttt{#1}}}
\def\@trftp{}             \def\trftp#1{\gdef\@trftp{\texttt{#1}}}

\def\new@tpage{\newpage\thispagestyle{empty}\null}
% Measurements
\setlength{\oddsidemargin}{7mm}
\setlength{\evensidemargin}{0mm}
\setlength{\textwidth}{150mm}

\setlength{\topmargin}{0mm}
\setlength{\textheight}{235mm}
\advance \topmargin by -\headheight
\advance \topmargin by -\headsep

% Maketitle
\renewcommand{\maketitle}{
    \begin{titlepage}
        \let\footnotesize\small
        \let\footnoterule\relax
        \renewcommand{\thefootnote}{\fnsymbol{footnote}}
        \new@tpage
        \begin{center}

        \begin{minipage}{2.5cm}
            \includegraphics[width=2.5cm]{figures/auth-seal.eps}
        \vspace{5pt}
        \end{minipage}

        \begin{minipage}{15cm}
        \begin{center}
            \textsc{
            \Large{\@institution} \\
            \large{\@department \\
            \@division \\
            %\@other
            }}
        \end{center}
        \end{minipage}
        %\hfill %\hspace{0.5cm}
    
        %
        \vfill
        %
                %
                \begin{center}
                    \LARGE \bfseries \@title
                \end{center}
                \ifx\@subtitle\@empty\else
                \begin{center}
                    \LARGE \@subtitle
                \end{center}
                \fi
                %
                \vspace{5mm}
                %
                \begin{center}
                    \huge{\textsc{\@translator}}\\
                    \vspace{3mm}
                    \normalsize{\toutis}\\
                    \vspace{3mm}
                    \large{\textbf{\authorNameCapital}}
                \end{center}
                %
                \vspace{5mm}
                %
                \hspace{1mm}
           \end{center}

           \vfill
           
                \begin{minipage}{15cm}
                \begin{tabbing}
                    \large \textbf{\supervisorname :} \=\@supervisor\\
                    \>\supervisorTitle
                \end{tabbing}
                \end{minipage}
                \vspace{1mm}
    
            %
            \vfill
            %
            \begin{center}
                \textsc{\@lab}\\
                \thesisPlaceDate
            \end{center}
            %
            \cleardoublepage
    \end{titlepage}
    %
    \renewcommand{\thefootnote}{\arabic{footnote}}
    \setcounter{footnote}{0}
    %
    \gdef\@thanks{}\gdef\@author{}\gdef\@translator{}\gdef\@institution{}
    \gdef\@department{}\gdef\@division{}\gdef\@lab{}\gdef\@other{}
    \gdef\@uppertitleback{}\gdef\@lowertitleback{}\gdef\@dedication{}%
    \gdef\@title{}\gdef\@subtitle{}\let\maketitle\relax%
}   


% Names
\newcommand{\keywordsname}{Λέξεις Κλειδιά}
\newcommand{\keywordsnameeng}{\en{Keywords}}
\newcommand{\abstractname}{Περίληψη}
\newcommand{\abstractnameeng}{\en{Abstract}}
\newcommand{\draftname}{Προσχέδιο}
\newcommand{\prefacename}{Πρόλογος}
\newcommand{\acknowledgementsname}{Ευχαριστίες}
\newcommand{\supervisorname}{\supervisorMaleFemale}
\newcommand{\pagesname}{Σελίδες}
\newcommand{\urlname}{\en{URL}}
\newcommand{\ftpname}{\en{FTP}}

% More Names
\translator{Πτυχιακή Εργασία}
\institution{Αριστοτέλειο Πανεπιστήμιο Θεσσαλονίκης}
\department{Πολυτεχνική Σχολή}
\division{Τμήμα Ηλεκτρολόγων Μηχανικών και Μηχανικών Η/Υ}
\other{Σωκράτους 6, Τ.Κ. 54635, Θεσσαλονίκη}

\uppertitleback{
    \begin{minipage}{2cm}
        \includegraphics[width=2cm]{figures/auth-seal.eps}
    \end{minipage}
    \hspace{0.5cm}
    \begin{minipage}{12cm}
        \@institution \\
        \@department \\
        \@division 
    \end{minipage}
}

% Redefining Commands
\renewcommand{\frontmatter}{
    \cleardoublepage
    \@mainmatterfalse \pagenumbering{roman}
}
\renewcommand{\mainmatter}{
    \label{lastfront}
    \cleardoublepage
    \@mainmattertrue\pagenumbering{arabic}
    \addtocontents{toc}{\protect\addvspace{1em}}
}
\renewcommand{\backmatter}{
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmatterfalse
}

% Headings
\def\invisiblethingie{\tiny\ }
\def\myemptypage{
    \mbox{}
    \vspace{\fill}
    \begin{flushright}
        \invisiblethingie
    \end{flushright}
    \vspace{5ex}
    \thispagestyle{empty}
}
%
\renewcommand{\cleardoublepage}{
    \clearpage %
    \if@twoside \ifodd\c@page\else
    \myemptypage
    \newpage
    \if@twocolumn\mbox{}\newpage\fi\fi\fi
}
%
\renewcommand{\chaptermark}[1]{
    \markboth{\mbox{\selectlanguage{greek}\@chapapp}\ \thechapter.\ \ #1}{}
%        \markboth{\mbox{\@chapapp}\ \thechapter.\ \ #1}{}
}
\renewcommand{\sectionmark}[1]{
    \markright{\thesection\ \ #1}{}
}
%
\fancyhf{}
\fancyhead[LE,RO]{\thepage}
\fancyhead[LO]{\slshape\nouppercase{{\rightmark}}}
\fancyhead[RE]{\slshape\nouppercase{{\leftmark}}}
\addtolength{\headheight}{2pt}
\setlength{\headwidth}{\textwidth}
\addtolength{\topmargin}{-2pt}
%
\let\finik@tocont\tableofcontents
\renewcommand{\tableofcontents}{
    \finik@tocont
    \addcontentsline{toc}{chapter}{\contentsname}
}

\let\finik@lof\listoffigures
\renewcommand{\listoffigures}{
    \finik@lof
    \addcontentsline{toc}{chapter}{\selectlanguage{greek}\listfigurename}
}
\let\finik@lot\listoftables
\renewcommand{\listoftables}{
    \finik@lot
    \addcontentsline{toc}{chapter}{\listtablename}
}
% More Enviroments
\newenvironment{keywords}{\section*{\keywordsname}}{}
\newenvironment{keywordseng}{\section*{\keywordsnameeng}}{}
\newcommand{\footacknowledgement}[1]{%
  \let\@tmp@makefntext\@makefntext%
  \long\def\@makefntext##1{%
      \parindent 1em%
      \noindent##1}%
  \footnotetext{#1}%
  \let\@makefntext\@tmp@makefntext%
}
\newenvironment{acknowledgements}{%
  \chapter*{\acknowledgementsname}%
  \addcontentsline{toc}{chapter}{\acknowledgementsname}%
}{}

\def\abstract{%
\chapter*{\abstractname\@mkboth{\abstractname}{\abstractname}}
\addcontentsline{toc}{chapter}{\abstractname}
}
\def\abstracteng{
\chapter*{\abstractnameeng\@mkboth{\abstractnameeng}{\abstractnameeng}}
\addcontentsline{toc}{chapter}{\abstractnameeng}
}
\def\endabstract{\par\vfil\null\endtitlepage}
%
\let\finik@bibl\bibliography%#1

% Misc

\AtEndDocument{\subparagraph{}\label{lastback}}

%% Dedication
\newcommand{\thesisDedication}[1]{%
  \cleardoublepage
  \thispagestyle{empty}
  ~\\
  \vfill
  \begin{flushright}
      \textit{#1}
  \end{flushright}
  ~\\
  \vfill
  \pagebreak
}