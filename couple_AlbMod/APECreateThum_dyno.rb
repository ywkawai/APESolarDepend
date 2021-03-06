#!/usr/env/ruby

require "../collectImgLib"
include CollectImgLib

##########################
## Configuration
#########################

# Configuration for creating thumbnail
DCMODEL_THUM_ORIGIN = "/home/ykawai/dcmodel-thum.rb"

# Path of parent directory where the figures of simulation results are saved.
FIGSTORAGE_DIR="./"

# Configuration for creating thumbnail
DCMODEL_THUM_ORIGIN = "/home/ykawai/dcmodel-thum.rb"

DATASTORAGE_DIR=""

exps_mean_state = [
#  Exp.new("S900_mean_state", "S900/mean_state/", ""),  
#  Exp.new("S1000_mean_state", "S1000/mean_state/", ""),  
#*
#  Exp.new("S1100_mean_state", "S1100/mean_state/atm", ""),  
  Exp.new("S1100_mean_state", "S1100/mean_state/ocn", ""),  
  Exp.new("S1100_mean_state", "S1100/mean_state/sice", ""),  
#*
#  Exp.new("S1150_mean_state", "S1150/mean_state/atm", ""),  
  Exp.new("S1150_mean_state", "S1150/mean_state/ocn", ""),  
  Exp.new("S1150_mean_state", "S1150/mean_state/sice", ""),  
#*
#  Exp.new("S1200_mean_state", "S1200/mean_state/atm", ""),
  Exp.new("S1200_mean_state", "S1200/mean_state/ocn", ""),
  Exp.new("S1200_mean_state", "S1200/mean_state/sice", ""),
#*
#  Exp.new("S1250_mean_state", "S1250/mean_state/atm", ""),
  Exp.new("S1250_mean_state", "S1250/mean_state/ocn", ""),
  Exp.new("S1250_mean_state", "S1250/mean_state/sice", ""),
#*
#  Exp.new("S1300_mean_state", "S1300/mean_state/atm", ""),
  Exp.new("S1300_mean_state", "S1300/mean_state/ocn", ""),
  Exp.new("S1300_mean_state", "S1300/mean_state/sice", ""),
#*
#  Exp.new("S1380_mean_state", "S1380/mean_state/atm", ""),
  Exp.new("S1380_mean_state", "S1380/mean_state/ocn", ""),
  Exp.new("S1380_mean_state", "S1380/mean_state/sice", ""),
#*
#  Exp.new("S1450_mean_state", "S1450/mean_state/atm", ""),
  Exp.new("S1450_mean_state", "S1450/mean_state/ocn", ""),
  Exp.new("S1450_mean_state", "S1450/mean_state/sice", ""),
#*
  Exp.new("S1500_mean_state", "S1500/mean_state/atm", ""),
  Exp.new("S1500_mean_state", "S1500/mean_state/ocn", ""),
  Exp.new("S1500_mean_state", "S1500/mean_state/sice", ""),
]
exps_mean_state.each{|exp|
  p "#{exp.name}..."
  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}

#--------------------------------------------------------

exps_tserise = [
#*
#  Exp.new("S1100_tserise_atm", "S1100/tserise/atm", ""),
#  Exp.new("S1100_tserise_ocn", "S1100/tserise/ocn", ""),
#  Exp.new("S1100_tserise_ocn", "S1100/tserise/sice", ""),
#*
#  Exp.new("S1150_tserise_atm", "S1150/tserise/atm", ""),
#  Exp.new("S1150_tserise_ocn", "S1150/tserise/ocn", ""),
#  Exp.new("S1150_tserise_sice", "S1150/tserise/sice", ""),
#*
#  Exp.new("S1200_tserise_atm", "S1200/tserise/atm", ""),
#  Exp.new("S1200_tserise_ocn", "S1200/tserise/ocn", ""),
#  Exp.new("S1200_tserise_sice", "S1200/tserise/sice", ""),
#*
#  Exp.new("S1250_tserise_atm", "S1250/tserise/atm", ""),
#  Exp.new("S1250_tserise_ocn", "S1250/tserise/ocn", ""),
#  Exp.new("S1250_tserise_sice", "S1250/tserise/sice", ""),
#*
#  Exp.new("S1300_tserise_atm", "S1300/tserise/atm", ""),
#  Exp.new("S1300_tserise_ocn", "S1300/tserise/ocn", ""),
#  Exp.new("S1300_tserise_sice", "S1300/tserise/sice", ""),
#*
#  Exp.new("S1380_tserise_atm", "S1380/tserise/atm", ""),
#  Exp.new("S1380_tserise_ocn", "S1380/tserise/ocn", ""),
#  Exp.new("S1380_tserise_sice", "S1380/tserise/sice", ""),
#*
#  Exp.new("S1450_tserise_atm", "S1450/tserise/atm", ""),
  Exp.new("S1450_tserise_ocn", "S1450/tserise/ocn", ""),
  Exp.new("S1450_tserise_sice", "S1450/tserise/sice", ""),
#*
  Exp.new("S1500_tserise_atm", "S1500/tserise/atm", ""),
  Exp.new("S1500_tserise_ocn", "S1500/tserise/ocn", ""),
  Exp.new("S1500_tserise_sice", "S1500/tserise/sice", ""),
]
exps_tserise.each{|exp|
  p "#{exp.name}..."
  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}

#--------------------------------------------------------

exps_solar_const_depend = [
#*
  Exp.new("SolarConstDepnd_atm", "solar_const_depend/atm", ""),
  Exp.new("SolarConstDepnd_ocn", "solar_const_depend/ocn", ""),
  Exp.new("SolarConstDepnd_sice", "solar_const_depend/sice", ""),
  Exp.new("SolarConstDepnd_sice", "solar_const_depend/couple", ""),
]
exps_solar_const_depend.each{|exp|
  p "#{exp.name}..."
  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}

#--------------------------------------------------------

extra_exps = [ 
              Exp.new("regime_diagram", "./regime_diagram/"), 
]
extra_exps.each{|exp|
  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
  #  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
  
}


