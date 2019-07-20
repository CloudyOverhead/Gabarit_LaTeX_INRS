% Classe theseINRS
%
%============================================
% LISTE DES OPTIONS
%------------------------------------------------------------
%   phd         : \maketitle produit la page titre pour un doctorat
%   msc         : \maketitle produit la page title pour une maitrise
%   index       : utilise le package makeidx pour la production d'un index
%   noindex     : le package makeidx n'est pas appele
%   hyperref    : utilise le package hyperref pour la production d'hyperliens
%   nohyperref  : le package hyperref n'est pas appele
%   francais    : utilise le package babel avec l'option francais
%   anglais     : utilise le package babel avec l'option english
%                 (equivaut a \usepackage[francais,english]{babel},
%                 meme si l'option francais est aussi passee a theseINRS)
%   final       : meme effet que pour la classe report
%   draft       : meme effet que pour la classe report
%   leqno       : meme effet que pour la classe report
%   fleqn       : meme effet que pour la classe report
%   dvips       : passe a la classe report, qui le passe a hyperref
%   pdftex      : passe a la classe report, qui le passe a hyperref
%   textures    : passe a la classe report, qui le passe a hyperref
%   entetes     : des entetes sont formees avec les titres de chapitres
%   noentetes   : l'entete contient seulement le numero de page
%   prelimtm    : l'argument de \chapter* est ajoute a la table des matieres
%   noprelimtm  : l'argument de \chapter* n'est pas ajoute a la table des matieres
%-----------------------------------------------------------------------
% Options par defaut : entetes, msc, francais, index, prelimtm, hyperref
%-----------------------------------------------------------------------
%
%
%
%========================================
% LISTE DES COMMANDES
%-------------------------------------------------------
% Toutes les commandes qui suivent requierent un argument,
% qui doit etre celui qui est indique ci-dessous :
%
% \PrenomNom    : prenom, suivi du nom, en minuscules.
% \titre        : titre de la these ou du memoire, en majuscules.
% \soustitre    : sous-titre de la these ou du memoire, s'il y a
%                 un sous titre. En minuscules.
% \programme    : nom du programme.
% \grade        : nom du grade.
% \annee        : annee pour le copyright et l'indication de
%                 l'annee sous le nom de l'universite.
% \mois         : mois a inscrire sous le nom de l'universite.
% \faculte      : nom de la faculte.
% \jury         : nom des membres du jury sous forme de tableau (chaque ligne : fonction, nom, institution)
%
%
%
%==========================
% Liste des packages requis
%--------------------------
%
%   geometry   (standard)
%   inputenc   (standard)
%   fontenc    (standard)
%   etoolbox   (standard)
%   lmodern    (standard)
%   graphicx   (standard)
%   babel      (standard)
%   color      (standard)
%   hyperref   (standard)
%   makeidx    (standard)
%   report     (standard)
%   fancyhdr   (standard)
%   graphbox   (standard)
%   titlesec   (standard)
%   textcase   (standard)
%   emptypage  (standard)
%   nomencl    (standard)
%   helvet     (standard)
%
% Ces packages utilisent d'autres fichiers.
% Pour connaitre la liste des fichiers utilises, ajoutez la commande
% \listfiles dans le preambule. La liste est alors donnee a la fin du
% fichier .log.
%
%
%
%===========================================================
% LISTE DES ENVIRONNEMENTS DEFINIS PAR LA CLASSE theseINRS.cls
%-----------------------------------------------------------
%
% dedicace       : pour produire la dedicace.
% resumechapitre : pour produire des resumes de chapitre.
%
%
%
%
%===========================================================
%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%
%
\ProvidesClass{theseINRS}[2003/02/14]
%
\newif\if@entetes
\newif\if@hyperref
\newif\if@index
\newif\if@msc
\newif\if@prelimtm
\DeclareOption{entetes}{\@entetestrue}
\DeclareOption{noentetes}{\@entetesfalse}
\DeclareOption{msc}{\@msctrue}
\DeclareOption{phd}{\@mscfalse}
\DeclareOption{index}{\@indextrue}
\DeclareOption{noindex}{\@indexfalse}
\DeclareOption{hyperref}{\@hyperreftrue}
\DeclareOption{nohyperref}{\@hyperreffalse}
\DeclareOption{prelimtm}{\@prelimtmtrue}
\DeclareOption{noprelimtm}{\@prelimtmfalse}
\DeclareOption{francais}{\PassOptionsToPackage{francais}{babel}}
\DeclareOption{anglais}{\PassOptionsToPackage{english}{babel}}
\DeclareOption{final}{\PassOptionsToClass{final}{report}}
\DeclareOption{draft}{\PassOptionsToClass{draft}{report}}
\DeclareOption{leqno}{\PassOptionsToClass{leqno}{report}}
\DeclareOption{fleqn}{\PassOptionsToClass{fleqn}{report}}
\DeclareOption{dvips}{\PassOptionsToClass{dvips}{report}}
\DeclareOption{pdftex}{\PassOptionsToClass{pdftex}{report}}
\DeclareOption{textures}{\PassOptionsToClass{textures}{report}}
%
\ExecuteOptions{entetes,msc,francais,index,prelimtm,hyperref}
\ProcessOptions*
% Taille de la police de caractère normale = 11 points
% Imprimer recto verso, chapitre sur une page impaire
\LoadClass[letterpaper,11pt,twoside,onecolumn,openright]{report}
\RequirePackage[showframe,letterpaper,margin=25mm]{geometry}
\RequirePackage[utf8]{inputenc} % Pour pouvoir taper les accent directement et sans passer par \'
\RequirePackage[T1]{fontenc} % Pour que les accents soient correctement traités dans le PDF
\RequirePackage{etoolbox}
\RequirePackage{lmodern} % Pour que les accents soient correctement traités dans le PDF
\RequirePackage{graphicx} % Pour insérer des images avec la commande \includegraphics
\RequirePackage{babel}[2001/03/01]
\RequirePackage{color}[1999/02/16]
\RequirePackage{fancyhdr}
\RequirePackage{graphbox}
\RequirePackage[explicit]{titlesec}
\RequirePackage{titletoc}
\RequirePackage[overload]{textcase}
\RequirePackage{emptypage} % Pour enlever les numéros de page sur les pages blanches
\RequirePackage{nomencl} % Pour générer une liste d'abréviations}
\RequirePackage{helvet} % Pour utiliser une police sans empattements.
\renewcommand{\familydefault}{\sfdefault} % Pour que la police prenne effet.
\if@index
  \RequirePackage{makeidx}[2000/03/29]
  \makeindex
\else
\fi
\if@hyperref
  \RequirePackage[%
		plainpages=false, bookmarks, linktocpage, hypertexnames=false]{%
    hyperref}[2002/09/12]
\else
\fi
%
%
\RequirePackage{setspace} % Pour définir les interlignes
%
%==========
% Commandes
%----------
\newcommand{\PrenomNom}[1]{\newcommand{\@PrenomNom}{#1}}
\newcommand{\titre}[1]{\newcommand{\@titre}{#1}}
\newcommand{\@soustitre}{}
\newcommand{\soustitre}[1]{\renewcommand{\@soustitre}{#1}}
\newcommand{\programme}[1]{\newcommand{\@programme}{#1}}
\newcommand{\grade}[1]{\newcommand{\@grade}{#1}}
\newcommand{\mois}[1]{\newcommand{\@mois}{#1}}
\newcommand{\annee}[1]{\newcommand{\@annee}{#1}}
\newcommand{\jury}[1]{\newcommand{\@jury}{#1}}
%
%
\renewcommand{\maketitle}{%
  \if@hyperref
    \hypersetup{%
      pdftitle={\@titre},
      pdfauthor={\@PrenomNom},
      pdfkeywords={},
    }%
    \if@msc
      \hypersetup{pdfsubject={M\'emoire de ma\^itrise}}
    \else
      \hypersetup{pdfsubject={Th\`ese de doctorat}}
    \fi
  \else
  \fi
  \fancypagestyle{logos}{
    \fancyhf{}
    \fancyhf[lh]{\raisebox{-5mm}[0pt][0pt]{\includegraphics[align=c]{fig/logo_UQ}}}
    \fancyhf[rh]{\raisebox{-5mm}[0pt][0pt]{\includegraphics[align=c]{fig/logo_INRS}}}
    \renewcommand*\headrulewidth{0pt}
  }
  \thispagestyle{logos}
  \setcounter{page}{1}
  \begin{center}%
    % Interligne et demi entre les lignes
    % Exception : les pages liminaires, d'où
    \singlespacing
    \vspace*{2mm}
      Centre Eau Terre Environnement\par%
    \vspace*{12mm}%
    {\Large\bf\MakeTextUppercase{\@titre}\par}%
    \vspace*{-4mm}%
    \vfil%
    \ Par\par
    \large\@PrenomNom\par
    \vfil%
    \if@msc
        {M\'emoire pr\'esent\'e}%
      \else
        {Th\`ese pr\'esent\'ee}%
    \fi
    \ pour l'obtention du grade de \\
    \@grade\\%
    \ en \@programme\par%
    \vfil%
    \textbf{Jury d'\'evaluation}\par%
    \vspace*{8mm}%
    \begin{tabular}{p{7.5cm} p{7.5cm}}
	\@jury
	\end{tabular}
  \end{center}%
  \vspace*{8mm}%
  \copyright \ Droits r\'eserv\'es de \@PrenomNom, \@mois \ \@annee\\%
  % \copyright \ \@PrenomNom, \@mois \ \@annee\\%
  \pagebreak%
  \setcounter{footnote}{0}%
  \global\let\maketitle\relax
}
%
%
% Modification des commandes \tableofcontents, \listofigures et \listoftables :
% remise de \parskip a zero pour ne pas avoir
% un interligne double entre les entrees.
\renewcommand\tableofcontents{%
  \cleardoublepage
  \phantomsection
  \addcontentsline{toc}{chapter}{\contentsname}
  \singlespacing
  \setlength{\parskip}{0mm}%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\contentsname}%
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
}
%
\renewcommand\listoffigures{%\cleardoublepage
  \phantomsection
  \renewcommand*\listfigurename{Liste des figures}
  \addcontentsline{toc}{chapter}{\listfigurename}
  \singlespacing
  \setlength{\parskip}{0mm}%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\listfigurename}%
  \singlespacing
  \@starttoc{lof}%
  \if@restonecol\twocolumn\fi
}
%
\renewcommand\listoftables{%
  \cleardoublepage
  \phantomsection
  \addcontentsline{toc}{chapter}{\listtablename}
  \singlespacing
  \setlength{\parskip}{0mm}%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\listtablename}%
  \singlespacing
  \@starttoc{lot}%
  \if@restonecol\twocolumn\fi
}
%
\let\printnomenclatureprev\printnomenclature
\renewcommand\printnomenclature{
  \cleardoublepage
  \phantomsection
  \renewcommand{\nomname}{Liste des abréviations}
  \addcontentsline{toc}{chapter}{\nomname}
  \makenomenclature
  \setlength\nomlabelwidth{2cm} % Aligner les descriptions d'abréviations à 2 cm.
  \printnomenclatureprev
}
%
\let\bibliographyprev\bibliography
\renewcommand\bibliography[1]{
  \singlespacing
  \cleardoublepage
  \phantomsection
  \addcontentsline{toc}{chapter}{\bibname}
  \bibliographystyle{bibliostyleINRS} % Utiliser le style bibliographique de l'INRS.
  \bibliographyprev{#1}
}
%
%
% Commande a utiliser apres les parties preliminaires qui sont
% numerotees en chiffres romains. Reinitialise le compteur
% de pages a 1 en numerotation arabe.
% Modification de la commande \chapter pour qu'il n'y ait
% pas de numero de page pour la premiere page d'un chapitre
% (normes). Affecte en meme temps \chapter*.
\newcommand\corps{%
  \cleardoublepage
  \setstretch{1.5}
  \normalsize\setlength{\parskip}{0.5\baselineskip}
  \newpage
  \pagestyle{corps}
  \pagenumbering{arabic}%
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \setcounter{page}{1}
  \renewcommand\chapter{
    \if@openright\cleardoublepage\else\clearpage\fi
    \thispagestyle{empty}
    \global\@topnum\z@
    \@afterindentfalse
    \secdef\@chapter\@schapter
  }
}
%
%
\newcommand\pagesprelim{
  \singlespacing
  \pagenumbering{roman}%
  \normalsize\setlength{\parskip}{0.5\baselineskip}}
%
%
%===============
% Environnements
%---------------
\newenvironment{dedicace}{%
  \newpage\thispagestyle{empty}
  \hfill\begin{minipage}{100mm}\vspace{100mm}\begin{flushright}\it}{%
  \end{flushright}\end{minipage}\vfill
}
\newenvironment{resumechapitre}{%
  \begin{quote}
  \singlespacing
  \setlength{\parskip}{\baselineskip}}{%
  \end{quote}
}
%
%
% Modification de l'environnement theindex pour :
% (1) eliminer le numero de page de la premiere page de l'index ;
% (2) ajouter une entree dans le fichier .toc pour qu'une reference
%     a l'index soit ajoutee dans la table des matieres ;
% (3) corriger une erreur d'hyperref qui met le mauvais lien vers
%     l'index dans la table des matieres ;
% (4) modifier \markright selon l'option entetes ou noentetes.
\if@index
  \renewenvironment{theindex}
    {\singlespacing
    \if@twocolumn
       \@restonecolfalse
     \else
       \@restonecoltrue
     \fi
     \columnseprule \z@
     \columnsep 35\p@
      % \phantomsection sert a faire croire a hyperref qu'il y a une nouvelle
      % section pour lui faire ajouter une cible d'hyperlien.
      % \phantomsection est definie dans hyperref.sty.
     \twocolumn[\if@hyperref\phantomsection\else\fi\@makeschapterhead{\indexname}]%
     \addcontentsline{toc}{chapter}{\indexname}% entree dans la table des matieres
     \if@entetes\markright{\indexname}\else\markright{}\fi
     \thispagestyle{empty}\parindent\z@
     \parskip\z@ \@plus .3\p@\relax
     \let\\@idxitem}
    {\if@restonecol\onecolumn\else\clearpage\fi}
\else
\fi
%
%
%
% Modification de l'environnement thebibliography pour
% parce que l'appel a \chapter* de la version originale
% est incompatible avec la nouvelle version de \chapter*.
\renewenvironment{thebibliography}[1]
  {\singlespacing
  \chapter*{\bibname}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
     {\settowidth\labelwidth{\@biblabel{#1}}%
      \leftmargin\labelwidth
      \advance\leftmargin\labelsep
      \@openbib@code
      \usecounter{enumiv}%
      \let\p@enumiv\@empty
      \renewcommand\theenumiv{\@arabic\c@enumiv}}%
   \sloppy
   \clubpenalty4000
   \@clubpenalty \clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m}
  {\def\@noitemerr
    {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}
%
%
%
%===================
% Headers et footers
%-------------------
\fancypagestyle{corps}{%
  \fancyhf{}
  \fancyfoot[C]{\thepage}
}
\patchcmd{\chapter}{\thispagestyle{plain}}{}{}{}
%===============================
% Definition du format des pages
%-------------------------------
% Largeur de la page : 8.5" = 215.9mm
% Marges uniformes de 25mm, il reste 176mm pour le texte
% 1" = 25.4mm
% Hauteur de la page : 11" = 279.4mm
% Taille et marges définis avec le package geometry (format lettre, marges 25mm)
% Interligne défini avec le package setspace (interligne 1.5)
%
%
% Diminuer l'espacement entre les éléments flottants (figures, tableaux) et le texte
\renewcommand\floatpagefraction{.9}
\renewcommand\topfraction{.9}
\renewcommand\bottomfraction{.9}
\renewcommand\textfraction{.1}
\setcounter{totalnumber}{50}
\setcounter{topnumber}{50}
\setcounter{bottomnumber}{50}
%
%
% Éviter les lignes orphelines en fin de pages ou en début de page
\widowpenalty10000
\clubpenalty10000
%
%
%==================
% Format des titres
%------------------
% Format personnalisé pour les titres de pages liminaires.
\titleformat{name=\chapter,numberless}
  [hang]
  {\Large\bfseries\center}
  {}
  {0pt}
  {\MakeTextUppercase{#1}}
%
%
% Format personnalisé pour les titres de chapitres ou de principales sections.
\titleformat{\chapter}
  [hang]
  {\Large\bfseries}
  {\thechapter}
  {1em}
  {\MakeTextUppercase{#1}}
  [\titlerule]
%
%
% Format personnalisé pour les titres de sections.
\titleformat{\section}
  [hang]
  {\large\bfseries}
  {\thesection}
  {1em}
  {#1}
%
%
% Format personnalisé pour les titres de sous-sections.
\titleformat{\subsection}
  [hang]
  {\bfseries}
  {\thesubsection}
  {1em}
  {#1}
%
%
% Format personnalisé pour les titres de sous-sous-sections.
\titleformat{\subsubsection}
  [hang]
  {\bfseries}
  {\thesubsubsection}
  {1em}
  {#1}
%
%
% Ajustement des espacements
\setlength{\topskip}{0pt}
\setlength{\topsep}{0pt}
\titlespacing*{name=\chapter,numberless}{0pt}{0pt}{24pt}
\titlespacing*{\chapter}{0pt}{0pt}{18pt}
\titlespacing*{\section}{0pt}{18pt}{12pt}
\titlespacing*{\subsection}{1.25cm}{18pt}{12pt}
\titlespacing*{\subsubsection}{1.75cm}{18pt}{12pt}
%
%
\setcounter{secnumdepth}{3}
%
%
%========================================
% Format des listes et éléments numérotés
%----------------------------------------
% Afficher "Tableau" plutôt que "Table".
\newcommand{\tablenamedef}{Tableau}
\newcommand{\figurenamedef}{Figure}
\AtBeginDocument{\renewcommand{\tablename}{\tablenamedef}}
%
%
\titlecontents{chapter}
  [0em]
  {\vspace{6pt}}
  {\bfseries\thecontentslabel\hspace{1em}\MakeTextUppercase}
  {\bfseries\MakeTextUppercase}
  {\bfseries\titlerule*[.25em]{.}\contentspage}
\titlecontents{section}
  [1.25cm]
  {\vspace{6pt}}
  {\hspace{1.25cm}\scshape\thecontentslabel\hspace{1em}}
  {\scshape}
  {\titlerule*[.25em]{.}\contentspage}
\titlecontents{subsection}
  [1.75cm]
  {\vspace{6pt}}
  {\hspace*{1.75cm}\itshape\thecontentslabel\hspace{1em}}
  {\itshape}
  {\titlerule*[.25em]{.}\contentspage}
%
% Ne pas afficher les sous-sous-sections dans la table des matières.
\setcounter{tocdepth}{2}
%
%
\titlecontents{figure}
  [0em]
  {\vspace{6pt}}
  {\scshape\figurenamedef\ \thecontentslabel\hspace{1em}}
  {\scshape}
  {\titlerule*[.25em]{.}\contentspage}
%
%
\titlecontents{table}
  [0em]
  {\vspace{6pt}}
  {\scshape\tablenamedef\ \thecontentslabel\hspace{1em}}
  {\scshape}
  {\titlerule*[.25em]{.}\contentspage}
%
%
%============
% Typographie
%------------
 % Ne pas ajouter automatiquement un espace avant les caractères.
\AtBeginDocument{%
  \shorthandoff{;}
  \shorthandoff{?}
  \shorthandoff{!}
}
%
%
%=======
% Autres
%-------
%
%
% Fin du fichier `theseINRS.cls'.
