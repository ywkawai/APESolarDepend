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
  Exp.new("S1000_mean_state", "S1000/mean_state/atm", ""),  
  Exp.new("S1000_mean_state", "S1000/mean_state/ocn", ""),
#*
  Exp.new("S1100_mean_state", "S1100/mean_state/atm", ""),  
  Exp.new("S1100_mean_state", "S1100/mean_state/ocn", ""),  
#*
  Exp.new("S1200_mean_state", "S1200/mean_state/atm", ""),
  Exp.new("S1200_mean_state", "S1200/mean_state/ocn", ""),
#*
  Exp.new("S1250_mean_state", "S1250/mean_state/atm", ""),
  Exp.new("S1250_mean_state", "S1250/mean_state/ocn", ""),
#*
  Exp.new("S1300_mean_state", "S1300/mean_state/atm", ""),
  Exp.new("S1300_mean_state", "S1300/mean_state/ocn", ""),
#*
  Exp.new("S1380_mean_state_atm", "S1380/mean_state/atm", ""),
  Exp.new("S1380_mean_state_atm", "S1380/mean_state/ocn", ""),
#*
  Exp.new("S1450_mean_state_atm", "S1450/mean_state/atm", ""),
  Exp.new("S1450_mean_state_atm", "S1450/mean_state/ocn", ""),
]
exps_mean_state.each{|exp|
    p "#{exp.name}..."
    exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}

#--------------------------------------------------------

exps_tserise = [
#*
  Exp.new("S1000_tserise_atm", "S1000/tserise/atm", ""),
  Exp.new("S1000_tserise_ocn", "S1000/tserise/ocn", ""),
#*
  Exp.new("S1100_tserise_atm", "S1100/tserise/atm", ""),
  Exp.new("S1100_tserise_ocn", "S1100/tserise/ocn", ""),
#*
  Exp.new("S1200_tserise_atm", "S1200/tserise/atm", ""),
  Exp.new("S1200_tserise_ocn", "S1200/tserise/ocn", ""),
#*
  Exp.new("S1250_tserise_atm", "S1250/tserise/atm", ""),
  Exp.new("S1250_tserise_ocn", "S1250/tserise/ocn", ""),
#*
  Exp.new("S1300_tserise_atm", "S1300/tserise/atm", ""),
  Exp.new("S1300_tserise_ocn", "S1300/tserise/ocn", ""),
#*
  Exp.new("S1380_tserise_atm", "S1380/tserise/atm", ""),
  Exp.new("S1380_tserise_ocn", "S1380/tserise/ocn", ""),
#*
  Exp.new("S1450_tserise_atm", "S1450/tserise/atm", ""),
  Exp.new("S1450_tserise_ocn", "S1450/tserise/ocn", ""),
]
exps_tserise.each{|exp|
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


