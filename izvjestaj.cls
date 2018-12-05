%Predložak za izvještaje iz predmeta Lab ESIT 1


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{izvjestaj}


\LoadClass[a4,12pt]{article}
\RequirePackage[a4paper, left=2.5cm, right=2.5cm, bottom=2.5cm, top=2.5cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage[croatian]{babel}
\usepackage{framed}
\usepackage{fancyhdr}
\pagestyle{fancy}

\linespread{1.1}
%\renewcommand{\theequation}	{\@rbr.\arabic{equation}}
%\renewcommand{\thefigure}	{\@rbr.\arabic{figure}}
%\renewcommand{\thetable}	{\@rbr.\arabic{table}}
\renewcommand{\labelitemi}{\textendash}
\renewcommand{\labelitemii}{\textbullet}
\renewcommand*{\@seccntformat}[1]{%
  \csname the#1\endcsname.\quad
}

% osnovni podaci
\def\vjezba{\gdef\@vjezba}		% Vjezba
\def\prezime{\gdef\@prezime}		% Prezime studenta
\def\ime{\gdef\@ime}			% Ime studenta
\def\predmet{\gdef\@predmet}		% Kolegij
\def\jmbag{\gdef\@jmbag}		% JMBAG studenta
\def\datum{\gdef\@datum}		% Datum
\def\grupa{\gdef\@grupa}		% Grupa
\def\profil{\gdef\@profil}			% Profil
\def\broj{\gdef\@broj}			% Broj vjezbe



% zaglavlje
\lhead{\footnotesize \@prezime~-- grupa \@grupa}
\chead{}
\rhead{\footnotesize Izvještaj -- vj.~br.~\@broj}


% naslov
\renewcommand{\maketitle} {

\noindent
\fbox{%
\begin{minipage}{0.98\textwidth}
	\fbox{%
	\begin{minipage}[c][4cm][c]{0.29\textwidth}
	\centering
	\@prezime \ \@ime \\
	\@grupa \\
	\@profil \\
	\@jmbag
	\end{minipage}} 	
	\begin{minipage}[c][4.25cm][c]{0.505\textwidth}
		\fbox{%
		\begin{minipage}[c][1cm][c]{0.97\textwidth}
		\centering 
		{\scriptsize SVEUČILIŠTE U ZAGREBU \\
		FAKULTET ELEKTROTEHNIKE I RAČUNARSTVA}
		\end{minipage}} \vfill
		\fbox{%
		\begin{minipage}[c][1cm][c]{0.97\textwidth}
		\centering 
		{\bf \@predmet}
		\end{minipage}}\vfill
		\fbox{%
		\begin{minipage}[c][1.3cm][t]{0.97\textwidth}
		\noindent{\footnotesize Vježba br.~\@broj :}
		
		\vspace{4pt}
		\centering\@vjezba
		\end{minipage}}
	\end{minipage}
	\fbox{%
	\begin{minipage}[c][4cm][c]{0.16\textwidth}
	\centering
	\@datum
	\end{minipage}}
\end{minipage}}

}

\endinput