%%%   Last Update: 1394/09/02 (By Hamid Jazayeri)
%%%   Modifications History
%%%   1- Adding \id for requesting Student ID
%%%   2- Adding \secondname, \secondsurname, \secondid, 
%%%      \latinid, \latinsecondname, \latinsecondsurname and \latinsecondidfor coworker students.
%%%   3- Adding Besmellah Page 
%%%   4- Modifying Signature command  
%%%   5- Adding CopyRight sheet
%%%   6- Adding Oath sheet
%%%   7- Adding Graduation Office Member Name for graduate studies.
%%%   
%%%   

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NITthesis}
              [08/08/2014 v0.1
 Persian thesis document class in XeLaTeX for Babol Noshirvani University of Technology projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,11pt]{book}
%%%%%%%%%  Packages  %%%%%%%%%%%%%%%%%
\RequirePackage{ifthen}
\RequirePackage{titlesec}
%\RequirePackage{mhchem}
%-------------------------------------------------------------------------------------------------------------------

% در ورژن جدید زی‌پرشین برای تایپ متن‌های ریاضی، این سه بسته، حتماً باید فراخوانی شود
\RequirePackage{amsthm,amssymb,amsmath}
% بسته‌ای برای تنطیم حاشیه‌های بالا، پایین، چپ و راست صفحه
\RequirePackage[top=25mm, bottom=25mm, left=25mm, right=35mm, headsep=10mm]{geometry}
% بسته‌‌ای برای ظاهر شدن شکل‌ها و تصاویر متن
\RequirePackage{multicol}   %  برای نمایش جدول فهرست علایم اختصاری
%\RequirePackage{graphicx}
%\RequirePackage{rotating}
%\RequirePackage{subfigure}

\usepackage[sort&compress,numbers]{natbib}
\usepackage{notoccite}
\usepackage[notbib,nottoc,notlot,notlof]{tocbibind}
\usepackage{caption} 
\usepackage{subcaption}
\usepackage{booktabs}
\usepackage{algorithmic}
\usepackage[chapter]{algorithm}
\usepackage{lscape}
\usepackage{tikz}
\usetikzlibrary{arrows,petri, topaths, shapes,matrix,decorations.pathmorphing}
\usepackage{tkz-graph}
\usepackage[tikz]{bclogo}
% بسته‌ای برای رسم کادر
%\RequirePackage{framed} 
% بسته‌‌ای برای چاپ شدن خودکار تعداد صفحات در صفحه «معرفی پایان‌نامه»
\RequirePackage{lastpage}
%\RequirePackage[font=small]{caption}

%  تنظیم فاصله در فهرست مطالب
\usepackage{tocloft}


% بسته‌ و دستوراتی برای ایجاد لینک‌های رنگی با امکان جهش
\RequirePackage[pagebackref=false,colorlinks,linkcolor=black,citecolor=black]{hyperref}
% چنانچه قصد پرینت گرفتن نوشته خود را دارید، خط بالا را غیرفعال و  از دستور زیر استفاده کنید چون در صورت استفاده از دستور زیر‌‌، 
% لینک‌ها به رنگ سیاه ظاهر خواهند شد که برای پرینت گرفتن، مناسب‌تر است
%\usepackage[pagebackref=false]{hyperref}
% بسته‌ لازم برای تنظیم سربرگ‌ها
\RequirePackage{fancyhdr}

% بسته‌ای برای نگارش معادلات شیمیایی
%\RequirePackage{mhchem}
% دستورات مربوط به ایجاد نمایه
\RequirePackage{makeidx}
\makeindex
%%%%%%%%%%%%%%%%%%%%%%%%%%
% فراخوانی بسته زی‌پرشین و تعریف قلم فارسی و انگلیسی
\RequirePackage[quickindex]{xepersian}
\settextfont[Scale=1.2]{XB Niloofar}

%%%%%%%%%%%%%%%%%%%%%%%%%%
% چنانچه می‌خواهید اعداد در فرمول‌ها، انگلیسی باشد، خط زیر را غیرفعال کنید
\setdigitfont[Scale=1.2]{XB Niloofar}
%%%%%%%%%%%%%%%%%%%%%%%%%%
% تعریف قلم‌های فارسی و انگلیسی اضافی برای استفاده در بعضی از قسمت‌های متن
\defpersianfont\nastaliq[Scale=2.5]{IranNastaliq}
\defpersianfont\chapternumber[Scale=1.2]{XB Niloofar}
\DefaultMathsDigits


\def\university#1{\gdef\@university{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\newcommand{\firstInternal}[1]{\def\@firstInternal{#1}}
\newcommand{\secondInternal}[1]{\def\@secondInternal{#1}}
\newcommand{\firstExternal}[1]{\def\@firstExternal{#1}}
\newcommand{\secondExternal}[1]{\def\@secondExternal{#1}}
\newcommand{\gradmemb}[1]{\def\@gradmemb{#1}}

\newcommand{\firstsupervisorTitle}[1]{\def\@firstsupervisorTitle{#1}}
\newcommand{\secondsupervisorTitle}[1]{\def\@secondsupervisorTitle{#1}}
\newcommand{\firstadvisorTitle}[1]{\def\@firstadvisorTitle{#1}}
\newcommand{\secondadvisorTitle}[1]{\def\@secondadvisorTitle{#1}}
\newcommand{\firstInternalTitle}[1]{\def\@firstInternalTitle{#1}}
\newcommand{\secondInternalTitle}[1]{\def\@secondInternalTitle{#1}}
\newcommand{\firstExternalTitle}[1]{\def\@firstExternalTitle{#1}}
\newcommand{\secondExternalTitle}[1]{\def\@secondExternalTitle{#1}}
\newcommand{\firstExternalUni}[1]{\def\@firstExternalUni{#1}}
\newcommand{\secondExternalUni}[1]{\def\@secondExternalUni{#1}}
\newcommand{\gradmembTitle}[1]{\def\@gradmembTitle{#1}}


\university{دانشگاه صنعتی نوشیروانی بابل}



\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\presentDate#1{\gdef\@presentDate{#1}}
%--------- F. Begin
\def\grade#1{\gdef\Gr@de{#1}}
\def\gradeHarfi#1{\gdef\Gr@deHoroof{#1}}
\def\rank#1{\gdef\R@nk{#1}}
\def\id#1{\gdef\@id{#1}}
%\def\secondname#1{\gdef\@secondname{#1}}
%\def\secondsurname#1{\gdef\@secondsurname{#1}}
%\def\secondid#1{\gdef\@secondid{#1}}
%--------- F. End
\def\keywords#1{\gdef\@keywords{#1}}
\long\def\abstractFa#1{\long\gdef\@abstractFa{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
%\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\department#1{\gdef\@department{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\ShortFaTitle#1{\gdef\@ShortFaTitle{#1}}
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinpresentDate#1{\gdef\@latinpresentDate{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
%--------- F. Begin
\def\latinid#1{\gdef\@latinid{#1}}
%\def\latinsecondname#1{\gdef\@latinsecondname{#1}}
%\def\latinsecondsurname#1{\gdef\@latinsecondsurname{#1}}
%\def\latinsecondid#1{\gdef\@latinsecondid{#1}}
\def\latingradmemb#1{\gdef\@latingradmemb{#1}}
%--------- F. End
\long\def\abstractEn#1{\long\gdef\@abstractEn{#1}}
\def\keywordsEn#1{\gdef\@keywordsEn{#1}}
%\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\newif\if@phdthesis
\@mscthesisfalse
\DeclareOption{phd}{\@phdthesistrue}
\ProcessOptions



\def\ThesisName{
	\if@bscthesis {  پروژه } \fi
	\if@mscthesis{   پایان‌نامه }\fi
	\if@phdthesis {  رساله }\fi
}
\def\ThesisLevelName{
	\if@bscthesis{   کارشناسی } \fi
	\if@mscthesis{ کارشناسی‌ارشد }\fi
	\if@phdthesis{ دکتری }\fi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                Title page                 %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\CheckName#1{\ifdefined #1 
	\ifthenelse{\equal{#1}{}}{لطفا این نام را در فایل fa\_title.tex وارد کنید.}
	{#1}
	\else لطفا این نام را در فایل fa\_title.tex وارد کنید!\fi}


\def\titlepage{\newpage\centering
	\thispagestyle{empty}
	\parindent 0pt \parskip 10pt plus 1fil minus 1fil
	\def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\newcommand{\TitlePageFa}{
\begin{titlepage}
\vspace{-1cm}\centerline{{\includegraphics[height=4.3cm]{./Preface/logo-noshirvani.pdf}}}
\vspace{-.2cm}
{\large\@faculty\par
}
%\vspace{-.4cm}\@department}
%\vskip .5cm

{\large\bfseries \ThesisName \writtenfor \ThesisLevelName 
}
{\large\bfseries{در رشته}}
\vskip .2cm
\centerline{\large \bfseries\@department\ 
 گرایش   \@field}
\vskip 1cm
\centerline{\Large \bfseries\onvan}

\vskip -.2cm
 {\huge\bfseries {\baselineskip=1cm \@title}}\baselineskip=1.5cm\par
\vskip .8cm
%--------------------    Writen By
{\large%
  \by}\par
{\Large\bfseries{\nastaliq\large\bfseries  
          \CheckName{\@name}\ \ \CheckName{\@surname}
 }}\par

\vskip .8cm
 \baselineskip=.5cm
%--------------------    Supervisors
\large
{\ifx\@firstsupervisor\undefined%
\ifx\@secondsupervisor\undefined%
\else\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما
{\Large\bfseries\par
\@firstsupervisor}
\else
\large
اساتید راهنما
\par
{\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
\fi\fi}
\par\large
\vskip .8cm


\vskip 6mm
{\large \@thesisdate}
\end{titlepage}%
\newpage

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                Title page                 %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \renewcommand{\baselinestretch}{1.3}\settextfont[Scale=1.2]{XB Niloofar}
% \chapter*{چکیده}\noindent\@abstractFa
 \clearpage
 }

 
%\def\frame{%
%\thispagestyle{empty}
%\begin{framed}\thispagestyle{empty}}
%\def\endframe{\thispagestyle{empty}\end{framed}
%\thispagestyle{empty}
%\newpage
%}
%\def\abstractpage{\newpage
%\thispagestyle{empty}
%\vskip 15mm
%\par
%\begin{abstract}}
%\def\endabstractpage{\end{abstract}
%\newpage
%}

\def\latinabstract{\newpage
\thispagestyle{empty}
\vskip 15mm
\begin{center}{\Large\bfseries \@latintitle \\[5mm]}
{\bfseries Abstract}
\end{center}
\vspace{5mm}}

\def\endlatinabstract{\newpage}

\def\acknowledgementpage{\newpage
\thispagestyle{empty}

\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                NitParagraph Environment                 %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{NitParagraph}[1][عنوان متن]
%{	\parindent 0pt \parskip 24pt plus 6pt minus 6pt }
{\thispagestyle{empty}  \newpage {\nastaliq \LARGE{\bfseries #1}  } } 
{	\def\baselinestretch{1.5}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
%{Bye now!\\}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                Besmellah page                 %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\BesmellahPage}{
\thispagestyle{empty}
\begin{center}
	\includegraphics[width=0.5\textwidth]{Preface/Besmellah.pdf}
\end{center}
\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%  AbstractFa   %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\def\AbstractFa{ %\centering
    \newpage
    \thispagestyle{empty}   
    \addcontentsline{toc}{chapter}{چکیده}   
    \parindent 0pt \parskip 12pt plus 6pt minus 6pt
%   \centerline{\Large\bf  چکیده}
	\def\baselinestretch{1.25}
   {\Large\bf  چکیده \par}
    \it
}
\def\endAbstractFa{\par\kern 18pt \par {\large\bf  واژ‌ه‌های کلیدی: } \@keywords  \newpage}  %


\def\AbstractEn{ 
	\newpage
	\thispagestyle{empty}   
	\addcontentsline{toc}{chapter}{چکیده انگلیسی}   
	\parindent 0pt \parskip 12pt plus 6pt minus 6pt
	\def\baselinestretch{1.25}
	{\Large\bf  Abstract \par}
	\it
}
\def\endAbstractEn{\par\kern 18pt \par {\large\bf  Keywords: } \@keywordsEn  \newpage}  %



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%  ThesisBio   %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\ThesisBio{\newpage %\centering
	\thispagestyle{empty}
%	\topmargin -70pt
	\parindent 0pt \parskip 0pt plus 1pt minus 1pt
	\def\baselinestretch{2}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup
	}
\def\endThesisBio{\par\kern 0pt\egroup\vss\egroup\newpage}

\newcommand{\ThesisBioPage}{
\begin{ThesisBio}
	\begin{center}
	\includegraphics[width=3cm]{./Preface/logo-noshirvani.pdf}\par  
		\textbf{{ \large \@faculty }} \par \vspace{12pt}
		\textbf{{ \large 
				شناسنامه    
				\if@bscthesis {\large\bfseries پروژه  }  \fi
				\if@mscthesis {\large\bfseries پایان‌نامه }  \fi
				\if@phdthesis {\large\bfseries رساله }  \fi
				\if@bscthesis {\large\bfseries کارشناسی  }  \fi
				\if@mscthesis {\large\bfseries کارشناسی ارشد }  \fi
				\if@phdthesis {\large\bfseries دکتری }  \fi	  
			}
		}
		\vspace{1cm}
	\end{center}
	
	\noindent
	عنوان:
	{\large{\bfseries \@title	}}\par
	\noindent
	نام و نام خانوادگی دانشجو:
	{\large{\bfseries \@name\ \@surname	}} \par
	\noindent
	شماره دانشجویی: 
	{\large{\bfseries \@id	}} \par
	\noindent
	تاریخ ارایه (دفاع): 
	{\large{\bfseries \@presentDate	}} \par
	
	
	\ifx\@secondsupervisor\undefined \noindent
	استاد راهنما: 
	{\large{\bfseries \@firstsupervisor}}  \dotfill  \@firstsupervisorTitle\ \@university \par
	\else \noindent
	استاد راهنمای اول: 
	{\large{\bfseries \@firstsupervisor}}  \dotfill \@firstsupervisorTitle\ \@university \par
	استاد راهنمای دوم: 
	{\large{\bfseries \@secondsupervisor}}  \dotfill  \@secondsupervisorTitle\ \@university \par
	\fi
	
	
	\ifdefined\@firstadvisor \noindent
	استاد مشاور: 
	{\large{\bfseries \@firstadvisor}} \dotfill  \@firstadvisorTitle\ \@university \par \fi
	
	\ifdefined\@secondadvisor \noindent
	استاد مشاور: 
	{\large{\bfseries \@secondadvisor}}  \dotfill  \@secondadvisorTitle\ \@university \par \fi
	
	\ifdefined\@firstInternal \noindent
	داور داخلی: 
	{\large{\bfseries \@firstInternal}}  \dotfill  \@firstInternalTitle\ \@university \par \fi
	
	\ifdefined\@secondInternal \noindent
	داور داخلی: 
	{\large{\bfseries \@secondInternal}}  \dotfill  \@secondInternalTitle\ \@university \par \fi
	
	\ifdefined\@firstExternal \noindent
	داور خارجی: 
	{\large{\bfseries \@firstExternal}}  \dotfill  \@firstExternalTitle\ \@firstExternalUni \par \fi
	
	\ifdefined\@secondExternal \noindent
	داور خارجی: 
	{\large{\bfseries \@secondExternal}} \dotfill  \@secondExternalTitle\ \@secondExternalUni \par \fi
	
	\ifdefined\@gradmemb \noindent
	ناظر دانشگاه: 
	{\large{\bfseries \@gradmemb}}  \dotfill  \@gradmembTitle\ \@university \par \fi
	
  \newpage
\end{ThesisBio}
}

 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%           Latin Title page                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\font\titlefont=cmssbx10 scaled 2074
\font\supervisorfont=cmbxti10

\newcommand{\TitleEn}{%
\renewcommand{\baselinestretch}{1}
\settextfont{Arial}
\begin{latin}
\begin{titlepage}
\vspace{-0.5cm}{\includegraphics[height=4.3cm]{Preface/logo-noshirvani.pdf}}
\centerline{\bf  Babol Noshirvani University of Technology}  % \@latinuniversity
\large\bfseries
\@latinfaculty\space 
\vskip 5mm
Dissertation Submitted in Partial Fulfillment of The  Requirements
\\[.2cm]
For The Degree of
\if@phdthesis
Doctor of Philosophy in
\fi
\if@mscthesis
 Master of Science in
\fi
\if@bscthesis
Bachelor of Science in
\fi
{\large\bfseries \@latinfield}
\vskip 1cm
\baselineskip=.750cm
{\titlefont \@latintitle}
\vfill
\baselineskip=.750cm \par

{\bfseries\latinby}\par
{\large %
	\ifx\@latinsecondname\undefined%
	\@latinname \; \@latinsurname
	\else
	{\@latinname \; \@latinsurname } \par and  \par
	{\@latinsecondname \; \@latinsecondsurname }
	\fi
}\par
\vskip 5mm


\large
{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
Supervisor
{\large\bfseries\par
\@firstlatinsupervisor}
\else
\large
Supervisors
\par
{\large\bfseries \@firstlatinsupervisor{} \\  \@secondlatinsupervisor}
\fi\fi}
\par
\large
\vskip 5mm
\par
\vskip 1cm

{\@latinpresentDate}
\par
\vskip 1cm

\par

\vskip 1.5cm
\end{titlepage}
\end{latin}
}




%\def\onvan{عنوان}
\def\onvan{}
\def\writtenfor{برای دریافت درجه }
\def\by{
        \ifx\@secondname\undefined%
        نگارش
        \else
        نگارش
        \fi
       }
\def\latinby{by}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                          Copy Right                     %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\CopyRight{\newpage %\centering
	\thispagestyle{empty}
	\parindent 0pt \parskip 0pt plus 1pt minus 1pt
	\def\baselinestretch{1.5}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup
}
\def\endCopyRight{\par\kern 0pt\egroup\vss\egroup\newpage}

\newcommand{\CopyRightPage}{
\begin{CopyRight}
\begin{center}
	\includegraphics[width=3cm]{./Preface/logo-noshirvani.pdf}\\
	\textbf{\@faculty}\\
	\textbf{{ \Large  }\\[0.2cm]}
	\textbf{{ \Large  مجوز بهره‌برداری از پايان‌نامه}\\[1cm]}
\end{center}
بهره‌برداری از اين پايان‌نامه در چهارچوب مقررات كتابخانه و با توجه به محدودیتی كه توسط استاد راهنما به شرح زير تعيين می‌شود، بلامانع است:
\begin{itemize}
	\item[$\square$] بهره‌برداری از این پایان‌نامه برای همگان و با ذکر منبع، بلامانع است.
	\item[$\square$] بهره‌برداری از این پایان‌نامه با اخذ مجوز از استاد راهنما و با ذکر منبع، بلامانع است.
	\item[$\square$] بهره‌برداری از این پایان‌نامه تا تاریخ \rule{2cm}{0.02cm} ممنوع است. 
\end{itemize}

\vspace{1cm}
\hfill 
\begin{enumerate} 
	\ifx\@secondsupervisor\undefined%
	\item[] استاد راهنما: \textbf{\@firstsupervisor} \dotfill امضا \hspace{4cm~}\\
	\else
	\item استاد راهنمای اول: \textbf{\@firstsupervisor} \dotfill امضا\hspace{2.5cm~}\\
	\item استاد راهنمای دوم: \textbf{\@secondsupervisor} \dotfill امضا\hspace{2.5cm~}\\
	\fi
\end{enumerate}

\newpage	
\end{CopyRight}		
}









%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%              Oath                   %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\Oath{\newpage %\centering
	\thispagestyle{empty}
	\parindent 0pt \parskip 0pt plus 1pt minus 1pt
	\def\baselinestretch{1.75}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup
}
\def\endOath{\par\kern 0pt\egroup\vss\egroup\newpage}

\newcommand{\OathPage}{
\begin{Oath}
\begin{center}
	\includegraphics[width=3cm]{./Preface/logo-noshirvani.pdf}\par \vspace{12pt}
	\textbf{{ \Large تأييديه صحت و اصالت نتايج و مالکیت مادی ومعنوی   }}
	\vspace{12pt}
\end{center}
\makeatletter
اینجانب
{\large\bfseries \@name\ \@surname \ } 
به شماره دانشجویی
\@id\ 
رشته
{\large\bfseries \@department\ } 
دانشکده
{\large\bfseries \@faculty\ } 
در مقطع
\if@bscthesis {\large\bfseries کارشناسی  }  \fi
\if@mscthesis {\large\bfseries کارشناسی ارشد }  \fi
\if@phdthesis {\large\bfseries دکتری }  \fi
تأیید می‌نمایم که کلیه نتایج این
\if@bscthesis {\large\bfseries پروژه  }  \fi
\if@mscthesis {\large\bfseries پایان‌نامه }  \fi
\if@phdthesis {\large\bfseries رساله }  \fi
تحت عنوان 
{\large\bfseries   \@title\ }   
به استاد راهنمایی 
\ifx\@secondsupervisor\undefined%
{\large\bfseries \@firstsupervisor }  
\else
{\large\bfseries \@firstsupervisor }  
و
{\large\bfseries \@secondsupervisor }  
\fi
حاصل كار اينجانب و بدون هرگونه دخل و تصرف است و موارد نسخه‌برداري‌شده از آثار ديگران را با ذكر كامل مشخصات منبع ذكر كرده‌ام. درصورت اثبات خلاف مندرجات فوق، به تشخيص دانشگاه مطابق با ضوابط و مقررات حاكم (قانون حمايت از حقوق مؤلفان و مصنفان و قانون ترجمه و تكثير كتب و نشريات و آثار صوتي، ضوابط و مقررات آموزشي، پژوهشي و انضباطي ...) با اينجانب رفتار خواهد شد و حق هرگونه اعتراض درخصوص احقاق حقوق مكتسب و تشخيص و تعيين تخلف و مجازات را از خويش سلب مي‌نمايم. در ضمن، مسؤوليت هرگونه پاسخگويي به اشخاص اعم از حقيقي و حقوقي و مراجع ذي‌صلاح (اعم از اداري و قضايي) به عهده‌ي اينجانب خواهد بود و دانشگاه هيچ‌گونه مسؤوليتي در اين خصوص نخواهد داشت. در ضمن تمام دستاوردهای مادی و معنوی حاصله از
\if@bscthesis {\large\bfseries پروژه  }  \fi
\if@mscthesis {\large\bfseries پایان‌نامه }  \fi
\if@phdthesis {\large\bfseries رساله }  \fi
متعلق به
{\large\bfseries   \@university\ }   
می باشد و اینجانب هیچ گونه ادعایی در قبال آن ندارم.
\par
\vspace{1cm}
\noindent 
نام و نام خانوادگی:
\textbf{\@name\ \@surname} \dotfill امضا \hspace{2.5cm} 


\newpage
\end{Oath}	
}



\SepMark{-}

%\newcommand{\شف}{\begin{enumerate}} 
%\newcommand{\خف}{\end{enumerate}}  
%\newcommand{\مورد}{\item} 
%\renewcommand{\بخش}{\section} 
%\newcommand{\زیربخش}{\subsection} 
%\newcommand{\زیرزیربخش}{\subsubsection} 
%\eqcommand{ذم}{cite} 
%\eqcommand{ر}{ref} 
\newcommand{\dd}[1]{\:\;\mathrm{ #1}}
\newcommand{\pow}[2]{\ #1\mbox{$^{#2}$} }
%%%%%%%%%%%%%%%%%%%%%%%%%%
% دستوری برای حذف کلمه «چکیده»
\renewcommand{\abstractname}{}
% دستوری برای حذف کلمه «abstract»
\renewcommand{\latinabstract}{}
% دستوری برای تغییر نام کلمه «اثبات» به «برهان»
\renewcommand\proofname{\textbf{برهان}}
% دستوری برای تغییر نام کلمه «کتاب‌نامه» به «مراجع»
\renewcommand{\bibname}{مراجع}
% دستوری برای تعریف واژه‌نامه انگلیسی به فارسی
\newcommand\persiangloss[2]{#1\dotfill\lr{#2}\\}
% دستوری برای تعریف واژه‌نامه فارسی به انگلیسی 
\newcommand\englishgloss[2]{#2\dotfill\lr{#1}\\}
% تعریف دستور جدید «\پ» برای خلاصه‌نویسی جهت نوشتن عبارت «پروژه/پایان‌نامه/رساله»
%\newcommand{\پ}{پروژه/پایان‌نامه/رساله }
%%%%%%%%%%%%%%%%%%%%%%%%%%
% تعریف و نحوه ظاهر شدن عنوان قضیه‌ها، تعریف‌ها، مثال‌ها و ...
\theoremstyle{definition}
\newtheorem{definition}{تعریف}[section]
\theoremstyle{theorem}
\newtheorem{theorem}[definition]{قضیه}
\newtheorem{lemma}[definition]{لم}
\newtheorem{proposition}[definition]{گزاره}
\newtheorem{corollary}[definition]{نتیجه}
\newtheorem{remark}[definition]{ملاحظه}
\theoremstyle{definition}
\newtheorem{example}[definition]{مثال}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% دستورهایی برای سفارشی کردن صفحات اول فصل‌ها
\makeatletter
\newcommand\mycustomraggedright{%
 \if@RTL\raggedleft%
 \else\raggedright%
 \fi}
\def\@part[#1]#2{%
\ifnum \c@secnumdepth >-2\relax
\refstepcounter{part}%
\addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
\else
\addcontentsline{toc}{part}{#1}%
\fi
\markboth{}{}%
{\centering
\interlinepenalty \@M
\ifnum \c@secnumdepth >-2\relax
 \huge\bfseries \partname\nobreakspace\thepart
\par
\vskip 20\p@
\fi
\Huge\bfseries #2\par}%
\@endpart}
\def\@makechapterhead#1{%
\vspace*{-30\p@}%
{\parindent \z@ \mycustomraggedright %\@mycustomfont
\ifnum \c@secnumdepth >\m@ne
\if@mainmatter
\vskip 200\p@
\huge\bfseries \@chapapp\space {\chapternumber\thechapter}
\par\nobreak
\vskip 100\p@
\fi
\fi
\hskip 40\p@~
\begin{minipage}{0.80\textwidth}
\interlinepenalty\@M 
\renewcommand{\baselinestretch}{1.5}
\centering
\Huge \bfseries #1\par\nobreak
\end{minipage}
%\interlinepenalty\@M 
%\Huge \bfseries #1\par\nobreak
\vskip 120\p@
}
\newpage
}


%%%        تنظیمات فاصله گذاری عنوان بخش با پاراگرافهای قبل و بعد
%%%%%% \titlespacing{command}{left spacing}{before spacing}{after spacing}[right]
\titlespacing\section{0pt}{30pt plus 4pt minus 2pt}{6pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{30pt plus 4pt minus 2pt}{6pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}{30pt plus 4pt minus 2pt}{6pt plus 2pt minus 2pt}


% تنظیم فاصله بین خطوط فهرست مطالب
\setlength\cftparskip{-2pt}
\setlength\cftaftertoctitleskip{30pt}
\setlength{\cftsecnumwidth}{30pt}
\setlength{\cftsubsecnumwidth}{45pt} %  پهنای شماره فصل و بخش در فهرست مطالب
\setlength{\cftsubsecindent}{47pt}  %  فرورفتگی ابتدای زیر بخش در فهرست مطالب

\setlength{\cftfignumwidth}{35pt} %  پهنای شماره شکلها در فهرست مطالب

\setlength{\cfttabnumwidth}{35pt} %  پهنای شماره جدول در فهرست مطالب

%\renewcommand\cftchapafterpnum{\vskip -2pt}
%\renewcommand\cftsecafterpnum{\vskip -2pt}
%\renewcommand\cftsubsubsecafterpnum{\vskip -200pt}




\renewcommand\listfigurename{فهرست شکل‌ها}
\renewcommand\listtablename{فهرست جدول‌ها} 
\renewcommand\bibname{مراجع}



\makeatother



%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% دستورهایی برای سفارشی کردن سربرگ صفحات
%\csname@twosidetrue\endcsname

\pagestyle{fancy}
\fancyhf{} 
\rhead{\nouppercase{\textsc{\leftmark}}}
\renewcommand{\headrulewidth}{1pt}
\makeatletter
\renewcommand{\chaptermark}[1]{\markboth{{\footnotesize\@ShortFaTitle} \hfill 	{\small #1} }{}}
\makeatother


\fancyfoot[c]{\thepage}
 
  

\newcommand{\فا}[1]{#1\index{#1}} 
\newcommand{\ف}{\index} 
\newcommand{\فف}[1]{\index{\lr{#1}}} 

\newcommand{\LineStretch}[1]{\renewcommand{\baselinestretch}{#1}	
\settextfont[Scale=1]{XB Niloofar}
} 



	