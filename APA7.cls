% CLASS
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{APA7}
\LoadClass[12pt]{article}


% MARGINS
% load "geometry"
% set margins to 1 inch
\RequirePackage[top=1in, bottom=1in, left=1in, right=1in, a4paper]{geometry}


% PARAGRAPH & FONT
% load "titlesec", "indentfirst", and "fontspec"
% set to double spacing
\renewcommand{\baselinestretch}{2}
% customize the title format
\RequirePackage{titlesec}
% indent the first line
\RequirePackage{indentfirst}
% set fonts
\RequirePackage{fontspec}


% GRAPHICS
% Better Graphic Effects
\usepackage{graphicx}
\usepackage{subcaption}


% TABLES
% load "tabularx", "longtable" and "booktabs"
% adujst width automatically
\RequirePackage{tabularx}
% allow tables to cross pages
\RequirePackage{longtable}
% add lines in tables
\RequirePackage{booktabs}


% CITATION
% load "biblatex"
% cite in APA7 style
\RequirePackage[style=apa, backend=biber]{biblatex}
% indicate the name of the reference file
\addbibresource{references.bib} 
% "apacite" was commented out as it follows APA6 style
% \RequirePackage{apacite}

% HYPERLINK
\RequirePackage[colorlinks=true, linkcolor=blue, citecolor=blue, urlcolor=black]{hyperref}


% ToC & LoF
% customize table of contents and list of figures
\RequirePackage{tocloft}
\AtBeginDocument{
    \renewcommand{\contentsname}{\hfill\bfseries\large Contents\hfill} % centering, bold & large
    \renewcommand{\cftaftertoctitle}{\hfill} % centering
    \renewcommand{\cftloftitlefont}{\hfill\large\bfseries} % centering, bold & large
    \renewcommand{\cftafterloftitle}{\hfill} % centering
    \renewcommand{\cftfigaftersnum}{.} % symbol after figure number 
    \setlength{\cftfignumwidth}{1.5em} % width between fig number and fig name
}


% PROFILE
% Assign info to variables
\newcommand\titlefirst[1]{\def\@titlefirst{#1}}
\newcommand\titlesecond[1]{\def\@titlesecond{#1}}
\newcommand\titlethird[1]{\def\@titlethird{#1}}
\newcommand\program[1]{\def\@program{#1}}
\newcommand\supervisor[1]{\def\@supervisor{#1}}
\newcommand\wordcount[1]{\def\@wordcount{#1}}
\newcommand\candidatenumber[1]{\def\@candidatenumber{#1}}


% COVER
% Comment out any info that you do not want to include on the cover page
\newcommand\makecover{
    \begin{titlepage}
        \centering
        \includegraphics[width=\textwidth]{images/Logo/ucl-banner-black.png}
        ~\\ % blank line
        ~\\
        {\fontsize{16pt}{16pt}\bfseries{\@titlefirst} \par}
        {\fontsize{16pt}{16pt}\bfseries{\@titlesecond} \par}
        {\fontsize{16pt}{16pt}\bfseries{\@titlethird} \par}
        ~\\ % blank line
        {\fontsize{12pt}{12pt}{Programme: \@program} \par}
        {\fontsize{12pt}{12pt}{Candidate Number: \@candidatenumber} \par}
        {\fontsize{12pt}{12pt}{Supervisor: \@supervisor} \par}
        {\fontsize{12pt}{12pt}{Submission Date: \today} \par}
        %{\fontsize{12pt}{12pt}{Submission Date: 11 September 2024} \par} customize date format
        {\fontsize{12pt}{12pt}{Word Count: \@wordcount} \par}
        ~\\
        {\fontsize{12pt}{12pt}{I give permission for my thesis to be shared with future students} \par}
    \end{titlepage}
}


% HEADINGS

% Heading Level 1, centering
\titleformat{\section}
    {\fontsize{12pt}{12pt}\bfseries\centering}
    {}
    {0em}
    {}
    []

% Heading Level 2, left-justified
\titleformat{\subsection}
    {\fontsize{12pt}{12pt}\bfseries\raggedright}
    {}
    {0em}
    {}
    []

% Heading Level 3, left-justified & italic
\titleformat{\subsubsection}
    {\fontsize{12pt}{12pt}\bfseries\raggedright\itshape}
    {}
    {0em}
    {}
    []

% Heading Level 4, inline
\newcommand{\subheading}[1]{%
  {\fontsize{12pt}{12pt}\bfseries\raggedright\hspace*{0.5in}#1.}
}

% Heading Level 5, inline & italic
\newcommand{\subsubheading}[1]{%
  {\fontsize{12pt}{12pt}\bfseries\raggedright\itshape\hspace*{0.5in}#1.}
}
