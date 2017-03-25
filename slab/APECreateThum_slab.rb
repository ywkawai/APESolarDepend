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
  Exp.new("S900_mean_state", "S900/mean_state/", ""),  
  Exp.new("S1000_mean_state", "S1000/mean_state/", ""),  
  Exp.new("S1100_mean_state", "S1100/mean_state/", ""),  
  Exp.new("S1200_mean_state", "S1200/mean_state/", ""),
  Exp.new("S1300_mean_state", "S1300/mean_state/", ""),
  Exp.new("S1380_mean_state", "S1380/mean_state/", ""),
  Exp.new("S1450_mean_state", "S1450/mean_state/", ""),
]
exps_mean_state.each{|exp|
  p "#{exp.name}..."
  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}


extra_exps = [ 
              Exp.new("regime_diagram", "./regime_diagram/"), 
]
extra_exps.each{|exp|
  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
#  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}


