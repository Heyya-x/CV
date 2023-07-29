%---------- ----------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cvclass}[9/3/2022 custom CV class]
\LoadClass{article}

%\RequirePackage{
\RequirePackage{titlesec}
\RequirePackage{color}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage[empty]{fullpage}

%--------------------
% Page set
\pagestyle{fancy}
\fancyhf{}
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\urlstyle{same}

\raggedbottom
\raggedright
\setlength{\tabcolsep}{0in}

\addtolength{\oddsidemargin}{-0.6in}
\addtolength{\evensidemargin}{-0.5in}
\addtolength{\textwidth}{1.2in}
\addtolength{\topmargin}{-.6in}
\addtolength{\textheight}{1.0in}



% Section formatting
% usage: \titleformat{<command>}[<shape>]{<format>}{<label>}{<sep>}{<before>}{<after>}
\titleformat{\section}
			{\vspace{-10pt}\scshape\raggedright\Large}
			{}{0em}
			{}
			[\color{black}\titlerule\vspace{-6pt}]


%--------------------
% Custom commands

\newcommand{\website}[1]{
	\href{#1}{#1}
}

\newcommand{\email}[1]{
	\href{mailto:#1}{#1}
}

\newcommand{\resumeSubheadingDetailed}[4]{
  	\vspace{-1pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & #2 \\
      \textit{\small#3} & \textit{\small #4} \\
    \end{tabular*}\vspace{-6pt}
}

\newcommand{\resumeSubheadingWithTime}[3]{
  	\vspace{-0pt}\item
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & \textit{\small #2} \\
    \end{tabular*}\vspace{-0pt}
    #3
    \vspace{-6pt}
}

\newcommand{\resumeSubheadingCompact}[2]{
	\vspace{-0pt}\item
	\begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
		\textbf{#1} & \textit{\small #2}
	\end{tabular*}\vspace{-1pt}
	\vspace{-5pt}
}

\newcommand{\resumeSubheadingCompactVertical}[2]{
	\vspace{-0pt}\item
	\begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
		\textbf{#1}
	\end{tabular*}\vspace{-0pt}
	#2
	\vspace{-6pt}
}


\renewcommand{\labelitemii}{$\circ$}

\newcommand{\resumeItem}[2]{
	\item \small \textbf{#1}{: #2} \vspace{-4pt}
}

\newcommand{\resumeSubItem}[2]{
	\resumeItem{#1}{#2}%\vspace{-4pt}
}

\newcommand{\resumeItemSingle}[1]{
	\item \small{
		{#1 \vspace{-2pt}}
	}
}

\newcommand{\resumeSubheadingListStart}{\begin{itemize}[leftmargin=*]\vspace{-1pt}}
\newcommand{\resumeSubheadingListEnd}{\end{itemize}\vspace{-8pt}}

\newcommand{\resumeItemListStart}{\begin{itemize}}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{-5pt}}
