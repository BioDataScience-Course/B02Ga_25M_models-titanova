# Importation et remaniement des données


# Etape 1 : Importation des données brutes --------------------------------
if (!"tools:tests" %in% search())
  source(here::here("tests/tools_tests.R"), attach(NULL, name = "tools:tests"))

knitr::opts_chunk$set(dev = "ragg_png")

SciViews::R("model", lang ="fr")
microp <- read("data/Dataset.xlsx")


# Etape 2 : Description brève des données ---------------------------------



# Etape 3 : Nettoyage des données  ----------------------------------------
#Il n'y a aucune valeur manquante, il n'est pas nécessaire de retirer des données
## Recodage de microp$depth en microp$depth_rec
microp$depth_rec <- cut(microp$depth,
  include.lowest = TRUE,
  right = FALSE,
  dig.lab = 4,
  breaks = c(-11.75, -2.5, 1.75)
)
# Etape 4 : Ajout des labels et des unités --------------------------------

microp <- labelise (microp,
  label = list(id = "Echantillon", day = "Date", temp = "Température", depth_rec ="Profondeur de l'océan", mesocosm ="Mésocosme", plast_tot = "[Microplastique]", plast_ps = "[polystyrène]", plast_pp = "[Polypropylène]", plast_pe = "[Polyéthylène théréphtalate]", plast_pvc = "[Chlorure de polyvinyle]", plast_pe = "[Polyéthylène]", ammonium = "[Ammonium]", hna ="Haute concentration d'acides nucléiques chez bactéries", lna ="Basse concentration d'acides nucléiques chez bactéries ", chla_fluo = "Masse phytoplancton", fvfm ="Efficacité de la photosynthèse"),
  units = list(temp ="°C", depth ="m", plast_tot = "g.cm^-3", plast_ps = "g.cm^-3", plast_pp = "g.cm^-3", plast_pe = "g.cm^-3", plast_pvc = "g.cm^-3", plast_pe = "g.cm^-3", ammonium = "mg.m^-3", chla_fluo = "mg.m^-3" ))

# Etape 5 : Sauvegarde locale des données retravaillées -------------------
write$rds(microp, "data/microp.rds")
rm(microp)
