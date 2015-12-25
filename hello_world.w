% 2015-12-25
% It's been a while since I last wrote something in Latex.
%
% This is going to be an exploration of literate programming with nuweb.

\documentclass[a4paper]{report}
\newif\ifshowcode
\showcodetrue

\usepackage{color}
\definecolor{linkcolor}{rgb}{0, 0, 0.7}
\definecolor{light}{gray}{.93}

\usepackage{latexsym}
\usepackage{./nwhren}

\usepackage{listings}

\usepackage[%
backref,%
raiselinks,%
pdfhighlight=/O,%
pagebackref,%
hyperfigures,%
breaklinks,%
colorlinks,%
pdfpagemode=UseNone,%
pdfstartview=FitBH,%
linkcolor={linkcolor},%
anchorcolor={linkcolor},%
citecolor={linkcolor},%
filecolor={linkcolor},%
menucolor={linkcolor},%
urlcolor={linkcolor}%
]{hyperref}

\setlength{\oddsidemargin}{0cm}
\setlength{\evensidemargin}{0cm}
\setlength{\topmargin}{0cm}
\addtolength{\topmargin}{-\headheight}
\addtolength{\topmargin}{-\headsep}
\setlength{\textheight}{22.6cm}
\setlength{\textwidth}{16.51cm}
\setlength{\marginparwidth}{1.27cm}

\title{An Exploration of Literate Programming\\ With Nuweb and Go}
\date{}
\author{smotti}

\begin{document}

\pagenumbering{roman}
\begin{titlepage}
\maketitle
\end{titlepage}

\tableofcontents

\chapter{Hello World}
\pagenumbering{arabic}

In Go we first have to define the name of a package to which the file and its
content belongs to. The package \textit{main}, that we use, will instruct the
Go compiler to build an executable. Other package names indicate that it's a
shared library.
@o hello_world.go
@{package main
@<Import packages@>
@<Hello World func@>
@<Main func@>
@}

After that we import packages from the standard library that provide the
required functionality (i.e. printing to stdout etc.).
@d Import packages
@{import (
  "fmt"
)
@}

Now me implement the \emph{main} function of our small program. A function in
Go is declared with \emph{func} followed by the function name, an argument
list and a list of value types the function returns. The main function in Go
takes no arguments and returns no value.
@d Main func
@{func main() {
  helloWorld()
}
@| main @}

\newpage
Just to have something to write we implement a function to just print \emph{
Hello World} to \textit{stdout}. 
@d Hello World func
@{// helloWorld just prints "Hello World" to stdout via fmt.Println.
func helloWorld() {
  fmt.Println("Hello World")
}
@| helloWorld @}


\chapter{Indexes}

@f
@m
@u

\end{document}
