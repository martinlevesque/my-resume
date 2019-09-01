\ProvidesClass{cv}[2004/12/10 v1.0 Classe cv.cls Curriculum Vitae]

\LoadClass[a4paper,11pt]{article}

% Dimensions
\setlength{\textwidth}{500pt}
\setlength{\textheight}{730pt}

\setlength{\oddsidemargin}{0cm}
\setlength{\marginparsep}{0cm}
\setlength{\marginparwidth}{0cm}

\setlength{\topmargin}{1.25cm}
\setlength{\headheight}{0cm}
\setlength{\headsep}{0cm}
\setlength{\footskip}{0cm}
\setlength{\hoffset}{-30pt}
\setlength{\voffset}{-60pt}

\pagestyle{empty}

% --------------------------------------------------------------------
% Redéfinition de la \section
% --------------------------------------------------------------------

\renewcommand\section{\@startsection {section}{1}{\z@}
  {-3.5ex \@plus -1ex \@minus -.2ex}
  {.1ex}
  {\reset@font\large\bfseries}}

\let\presection=\section

\renewcommand{\section}[1]{
  \begin{flushleft}
  \presection*{#1}\vspace{-2.1ex}
  \noindent\rule{\textwidth}{.5pt}\vspace*{.5ex}
  \end{flushleft}
}

% --------------------------------------------------------------------
% Définition des environnements
% --------------------------------------------------------------------

% Définition d'un environnement pour la formation et les compétences
\newenvironment{formation}
  {
    \begin{flushleft}
    \fontfamily{cmss}\selectfont
    \begin{list}{$\bullet$}{
      \setlength{\labelwidth}{3.5cm}
      \setlength{\leftmargin}{4.0cm}
      \renewcommand{\makelabel}[1]{{##1\hfill}}
    }
  }
  {
    \end{list}
    \end{flushleft}
  }

% Définition d'un environnement pour les langues
\newenvironment{langues}
  {
    \begin{flushleft}
    \fontfamily{cmss}\selectfont
    \begin{list}{$\bullet$}{
      \setlength{\labelwidth}{3.5cm}
      \setlength{\leftmargin}{4.0cm}
      \renewcommand{\makelabel}[1]{{##1\hfill}}
    }
    \item[Langues]
      \begin{trivlist}
      \setlength{\itemsep}{0mm}
  }
  {
      \end{trivlist}
    \end{list}
    \end{flushleft}
  }

% Définition d'un environnement pour l'expérience professionnelle
\newenvironment{experience}
  {
    \begin{flushleft}
    \fontfamily{cmss}\selectfont
    \begin{description}
      \newcommand{\poste}[2]{\item[\textbf{\fontfamily{cmss}\selectfont ##1:}]
         ##2\\}
  }
  {
    \end{description}
    \end{flushleft}
  }

% Définition d'un environnement de liste pour chaque tâche
\newenvironment{tasks}
  {
    \begin{list}
      {$\bullet$}
      {
        \setlength{\labelwidth}{30pt}
        \setlength{\leftmargin}{12pt}
        \setlength{\itemsep}{\parsep}
      }
  }
  {
    \end{list}
  }

% --------------------------------------------------------------------
% Définition de l'entête
% --------------------------------------------------------------------

\newcommand{\entete}[4][]{
\begin{minipage}[t]{0.60\textwidth}
\Huge{\textbf{#2}} % Titre du CV
\vspace*{2ex}
\begin{quote}
\normalsize{\textit{#1}} % Eventuelle citation
\end{quote}
\end{minipage}
\begin{minipage}[t]{0.35\textwidth}
\begin{flushright}
\small{\textbf{#3}} % Nom et prénom

{\fontfamily{cmss}\selectfont #4} % Coordonnées
\end{flushright}
\end{minipage}
\vspace{1cm}
}

% vim:ft=tex:
