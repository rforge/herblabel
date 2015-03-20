\name{annotation_rtf}
\alias{annotation_rtf}
\title{
Making Annotation labels
}
\description{
Making annotation labels in RTF
}
\usage{
annotation_rtf(infile = NULL, outfile = "annotations.rtf")
}

\arguments{
  \item{infile}{
Character representing the template file in Excel2003.
}

  \item{outfile}{
the output rtf file.
}
}
\details{
This function reads Excel 2003 file template, and generate an RTF file containing 
annotation labels. 
}

\author{
Jinlong Zhang 
}

\examples{
    path <- system.file("extdata", "ANNOTATION_TEMPLATE.xls", package = "herblabel")
    annotation_rtf(infile = path,  outfile = "annotations.rtf")
}
