\name{bbsp_csv2herblabel}
\alias{bbsp_csv2herblabel}
\title{
BG-BASE SPECIMENS table Conversion
}
\description{
Convert the exported BG-BASE SPECIMENS CSV to herblabel template
}
\usage{
bbsp_csv2herblabel(infile, outfile = NULL, 
HERBARIUM = "Kadoorie Farm and Botanic Garden Herbarium", 
HERBARIUM_CODE = "KFBG", TITLE = NA, 
PROJECT = NA, PROCESSED_BY = NA, DATE_LASTMODIFIED = NA)
}

\arguments{
  \item{infile}{
The csv file exported from the SPECIMENS table by slist script of BG-BASE
}
  \item{outfile}{
The output csv file.
}
  \item{HERBARIUM}{
Name of the herbarium
}
  \item{HERBARIUM_CODE}{
Code of the herbarium
}
  \item{TITLE}{
Plants of some place
}
  \item{PROJECT}{
The project the specimen related with
}
  \item{PROCESSED_BY}{
The name of the person that makes the conversion
}
  \item{DATE_LASTMODIFIED}{
The date of the conversion
}
}
\details{
Kadoorie Farm and Botanic Garden Herbarium uses the BG-BASE program to manage the herbarium specimens. All the specimen records will go to the SPECIMENS table in BG-BASE, it has 771 fields, of which 191 are core fields, eg. Collector, Collector's Number. However, there is no herbarium label printing routine/function for herbarium label printing. This means all the information should be exported to a file for label printing. Usually the file could either be a plain text file with the fields separated by TABs, or a CSV file, of which all the columns are separated by commas. 

Exporting the records from BG-BASE specimens can be achieved by sending the command to slist interface. slist allows the user to export a number of entries from the tables in BG-BASE, although it is very slow (exporting the records for 5 specimens could take 3 to 4 minutes, so be patient). None ASCII character will to a corruption for these files, and thus the Chinese Name should not be exported, and during the data entry stage, only use English. 

The relationship between the fields in SPECIMENS table, the exported file from SPECIMENS table and the herblabel template could be found at the extdata folder of this package. The fields not included in the SPECIMENS table but the herblabel template needs should be filled either by manually editing or by specifying during the conversion (see the arguments).  

}
\value{
The data frame
}
\references{
BG-BASE http://www.bg-base.com/
Relationship between the BG-BASE SPECIMENS TABLE and the herblabel template.xlsx
}
\author{
Jinlong Zhang
}

\examples{
#    Sys.setlocale("LC_TIME", "English")
#    bbsp_csv_file <- system.file("extdata", "EXPORT20150121.CSV", package = "herblabel")
#    bbsp_csv2herblabel(infile = bbsp_csv_file,  outfile = "herblabel.csv")
}
