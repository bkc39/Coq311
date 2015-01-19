%% Class file for Coq311 lecture notes. 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coq311notes}
\LoadClass[12pt]{article}

%% Sets the title of the notes
\newcommand{\setnotetitle}[1]{\def\@notetitle{#1}}
\newcommand{\show@notetitle}{\@notetitle}

%% Sets the picture to be shown on the title page
\newcommand{\setnoteimage}[1]{\def\@noteimage{#1}}
\newcommand{\show@noteimage}{\@noteimage}

%% standardizes the title page
\renewcommand\maketitle{
  \begin{titlepage}
    \begin{center}

      \includegraphics[width=0.15\textwidth]{\show@noteimage}~\\[1cm]

      \textsc{\LARGE Functional Programming and Data Structures}\\[1.5cm]

      % Title
      \hrule \vspace{0.3cm}
      { \huge \bfseries \show@notetitle \\[0.4cm] }

      \hrule

      \vfill

      % Bottom of the page
      {\large \today}

    \end{center}
  \end{titlepage}
}
