% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "harvard-thesis.cls",
%     version         = "0.4",
%     date            = "4 April 2012",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, harvard-thesis",
%     supported       = "send email to suchow@fas.harvard.edu",
%     docstring       = "A thesis class for a Harvard dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{harvard-thesis}[2012/04/05 v0.4 Harvard University Thesis Class]
\LoadClass[11pt, oneside, a4paper]{book}


% Required packages
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{listings}
\usepackage[margin=0.984251969in]{geometry}

\hypersetup{
	linktocpage,
    colorlinks,
    citecolor=Crimson,
    filecolor=black,
    linkcolor=black,
    urlcolor=Crimson,
}

\RequirePackage[centertags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage[numbers, comma, sort&compress]{natbib}
\RequirePackage[small, md, sc]{titlesec}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}

% colors
\RequirePackage{color}
\definecolor{Crimson}{rgb}{0.6471, 0.1098, 0.1882}

\RequirePackage{url}
\RequirePackage[titles]{tocloft}
\setcounter{tocdepth}{1}
\renewcommand{\cftchapfont}{\normalsize \scshape}

\renewcommand\bibname{References}
\renewcommand\listfigurename{Listing of figures}
\raggedright

\RequirePackage{pdfsync} %do pdf synchronization [andy]

\usepackage[closeFloats, noSeparatorLine]{fltpage} %use the custom modified fltpage package
\RequirePackage{afterpage} 





 


\synctex=1 % turn synctex on automatically to sync between pdf viewer [andy]

%   list an entire bibliography entry inline. Useful for acknowledging when my paper was previously published
\RequirePackage{bibentry} 
\nobibliography*        

\RequirePackage{lettrine} % big letter at start of chapter
\RequirePackage[width=5in, letterpaper]{geometry}

\RequirePackage{fancyhdr} 
\pagestyle{plain} % options: empty , plain , fancy
\RequirePackage[palatino]{quotchap}
\definecolor{chaptergrey}{rgb}{0.6,0,0}
\RequirePackage{titling}
\RequirePackage{setspace} 
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage[labelfont={sf,bf,small},textfont={sf,small},justification=RaggedRight,margin=0pt, figurewithin=section, tablewithin=section]{caption}
\onehalfspacing
%\raggedright

\parindent 12pt
\RequirePackage{mathspec}

% use Arno Pro instead of standard LaTeX fonts
\setmathsfont(Digits,Latin,Greek)[
Path = fonts/,Extension = .otf,
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic,
Numbers={OldStyle,Proportional}]{ArnoPro}
\setmathrm
[Path = fonts/,Extension = .otf,
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic
]{ArnoPro}

\RequirePackage{xltxtra,xunicode}
\defaultfontfeatures{Mapping=tex-text, Numbers=OldStyle}
\aliasfontfeatureoption{Ligatures}{Historic}{Historical}
\setromanfont
[Path = fonts/,
Extension = .otf,
Mapping=tex-text, 
Numbers=OldStyle, 
Ligatures={Common}, 
SizeFeatures={%
	{Size={-10}, Font=*-RegularCaption},
	{Size={10-13.0}, Font=*},
	{Size={13.01-19.9}, Font=*-RegularSubhead, Ligatures=Rare, Contextuals={Swash,Alternate}},
	{Size={19.91-},Font=*-RegularDisplay, Ligatures=Rare, Contextuals={Swash,Alternate}}},
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic
]{ArnoPro} %
			
%Set fonts for Mac Specific (Comment out on Windows XP)
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue} 
%\setmonofont[Scale=MatchLowercase]{Consolas}

% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}


\renewcommand{\maketitle}{ 
	\singlespacing
	\begin{center}
	Honors Project Report
	\end{center}
	\thispagestyle{empty}
	\vspace*{\fill} \vspace{40pt} \begin{center}
	\Huge \textcolor{Crimson}{\textit{\thetitle}} \normalsize \\ \sc \vspace{20pt}
	by\\
	\theauthor \\
	\vspace{30pt}
	
	\begin{minipage}[t]{0.48\textwidth}
    \textbf{Supervisor:}\\
    Edwin Blake
    \end{minipage}
    \hfill
    \begin{minipage}[t]{0.48\textwidth}
    \begin{flushright}
    \textbf{Co-supervisors:}\\
    Pierre Benz\\
    Thomas Reitmaier
    \end{flushright}
    \end{minipage}
	\vspace{12pt}
	
	\begin{center}
      \begin{tabular}{ | c | l || c | c | c |}
        \hline
         & \textbf{Category} & \textbf{Min} & \textbf{Max} & \textbf{Chosen} \\ \hline
        1 & Requirement Analysis and Design & 0 & 20 & ?\\ \hline
        2 & Theoretical Analysis & 0 & 25 & ?\\ \hline
        3 & Experiment Design and Execution & 0 & 20 & ?\\ \hline
        4 & System Development and Implementation & 0 & 15 & ?\\ \hline
        5 & Results, Findings and Conclusion & 10 & 20 & ?\\ \hline
        6 & Aim Formulation and Background Work & 10 & 15 & ?\\ \hline
        7 & Quality of Report Writing and Presentation & \multicolumn{2}{c|}{10}  & 10\\ \hline
        8 & Adherence to Project Proposal and Quality of Deliverables & \multicolumn{2}{c|}{10} & 10\\ \hline
        9 & Overall General Project Evaluation & 0 & 10 & ?\\
        \hline
      \end{tabular}
    \end{center}


	%in partial fulfillment of the requirements\\ 
	%for the degree of\\ \@degree\\ 
	%in the subject of\\ \@field\\
	\vspace{15pt}
	\@department\\
	\@university\\ \@universitycity, \@universitystate\\ 
	\@degreemonth\ \@degreeyear
	\end{center} \vspace*{\fill}
}

% You might also consider licensing your work under Creative Commons). See: http://creativecommons.org/weblog/entry/12824 for other PhD students who have released their work under creative commons.

\newcommand{\copyrightpage}{
	\newpage \thispagestyle{empty} \vspace*{\fill}
	\sc \noindent \copyright~\textit{\@degreeyear \hspace{3pt}~- \theauthor} \\
	\noindent All rights reserved.
	\vspace*{\fill} \newpage \rm
}

\newcommand{\abstractpage}{
	\newpage
	\pagenumbering{roman}
	\setcounter{page}{3}
	\pagestyle{fancy}
	\lhead{Thesis advisor: \@advisor} \rhead{\@author}
	\renewcommand{\headrulewidth}{0.0pt} 
	\begin{center}
	\vspace*{1pt}
	\Large \textcolor{Crimson}{\textit{\@title}} \normalsize\\
	\vspace*{15pt}
	\sc Abstract \\ \rm
	\end{center}
	\doublespace %Harvard registrar requests that abstract is double spaced
	\input{frontmatter/abstract}
	\doublespace %Harvard registrar requests that abstract is double spaced	
	\newpage \lhead{} \rhead{}
	\cfoot{\thepage}
	\onehalfspacing
}

\newcommand{\dedicationpage}{
	\pagestyle{fancy}
	\newpage \thispagestyle{fancy} \vspace*{\fill}
	\sc \noindent \input{frontmatter/dedication}
	\vspace*{\fill} \newpage \rm
	}

% the list of authors
\newcommand{\authorlist}{
	\pagestyle{fancy}
	\newpage
	\thispagestyle{fancy} 
	\chapter*{Author List}
	\noindent \input{frontmatter/authorlist}
	\newpage \rm
	}

% the acknowledgments page
\newcommand{\acknowledgments}{
	\chapter*{Acknowledgments}
	\noindent
	\input{frontmatter/thanks}
	\vspace*{\fill} 
	\newpage
	\setcounter{page}{1}
	\pagenumbering{arabic}}
	
% An environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}}
