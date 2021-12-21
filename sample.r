# To generate CSV from : https://synthetichealth.github.io/synthea/

library(tidyverse)

(patients <- read_csv("csv/patients.csv"))

(patients_100 <- sample(patients$Id, 100))

(
  patients
  %>% filter(Id %in% patients_100)
  %>% write.csv("patients_100.csv")
  )

(observations <- read_csv("csv/observations.csv"))

(
  observations
  %>% filter(PATIENT %in% patients_100)
  %>% write.csv("measures_100.csv")
)

(procedures <- read_csv("csv/procedures.csv"))

(
  procedures
  %>% filter(PATIENT %in% patients_100)
  %>% write.csv("events_100.csv")
)

(careplans <- read_csv("csv/careplans.csv"))

(
  careplans
  %>% filter(PATIENT %in% patients_100)
  %>% write.csv("periods_100.csv")
)

(patients <- read_csv("csv/patients.csv"))

(patients_1000 <- sample(patients$Id, 1000))

(
  patients
  %>% filter(Id %in% patients_1000)
  %>% write.csv("patients_1000.csv")
)

(observations <- read_csv("csv/observations.csv"))

(
  observations
  %>% filter(PATIENT %in% patients_1000)
  %>% write.csv("measures_1000.csv")
)

(procedures <- read_csv("csv/procedures.csv"))

(
  procedures
  %>% filter(PATIENT %in% patients_1000)
  %>% write.csv("events_1000.csv")
)

(careplans <- read_csv("csv/careplans.csv"))

(
  careplans
  %>% filter(PATIENT %in% patients_1000)
  %>% write.csv("periods_1000.csv")
)

(patients <- read_csv("csv/patients.csv"))

(patients_10000 <- sample(patients$Id, 10000))

(
  patients
  %>% filter(Id %in% patients_10000)
  %>% write.csv("patients_10000.csv")
)

(observations <- read_csv("csv/observations.csv"))

(
  observations
  %>% filter(PATIENT %in% patients_10000)
  %>% write.csv("measures_10000.csv")
)

(procedures <- read_csv("csv/procedures.csv"))

(
  procedures
  %>% filter(PATIENT %in% patients_10000)
  %>% write.csv("events_10000.csv")
)

(careplans <- read_csv("csv/careplans.csv"))

(
  careplans
  %>% filter(PATIENT %in% patients_10000)
  %>% write.csv("periods_10000.csv")
)

