%% Class file for Coq311 lecture notes. 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coq311notes}
\LoadClass[12pt]{article}

%% Sets the title of the notes
\newcommand{\setpsettitle}[1]{\def\@psettitle{#1}}
\newcommand{\show@psettitle}{\@psettitle}

%% Sets the picture to be shown on the title page
\newcommand{\setnoteimage}[1]{\def\@noteimage{#1}}
\newcommand{\show@noteimage}{\@noteimage}

%% Sets the problem set number
\newcommand{\setnoteimage}[1]{\def\@noteimage{#1}}
\newcommand{\show@noteimage}{\@noteimage}

%% standardizes the title page
\renewcommand\maketitle{
  \begin{titlepage}
    \begin{center}
      \vfill
      
      \textsc{\LARGE Functional Programming and Data Structures}\\[1.5cm]

      \includegraphics[width=0.15\textwidth]{\show@psetimage}~\\[1cm]      

      \vfill
      
      % Title
      \textsc{\LARGE Problem Set \show@psetnumber}\\[1.5cm]
      
      \hrule \vspace{0.3cm}
      { \huge \bfseries \show@psettitle \\[0.4cm] }

      \hrule

      \vfill

      % Bottom of the page
      {\large \today}

    \end{center}
  \end{titlepage}
}
