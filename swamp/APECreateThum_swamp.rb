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
  Exp.new("S1000_mean_state", "S1000/mean_state/", ""),    
  Exp.new("S1100_mean_state", "S1100/mean_state/", ""),  
  Exp.new("S1150_mean_state", "S1150/mean_state/", ""),  
  Exp.new("S1200_mean_state", "S1200/mean_state/", ""),
  Exp.new("S1300_mean_state", "S1300/mean_state/", ""),
#  Exp.new("S1310_mean_state", "S1310/mean_state/", ""),
#  Exp.new("S1325_mean_state", "S1325/mean_state/", ""),
  Exp.new("S1380_mean_state", "S1380/mean_state/", ""),
  Exp.new("S1450_mean_state", "S1450/mean_state/", ""),
  Exp.new("S1500_mean_state", "S1500L32Mod/mean_state/", ""),
]
exps_mean_state.each{|exp|
  p "#{exp.name}..."
  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}

extra_exps = [ 
              Exp.new("regime_diagram", "./regime_diagram/"), 
]
extra_exps.each{|exp|
#  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}

exps_anim = [
  Exp.new("S1380_anim", "S1380/anim/", ""),
  Exp.new("S1500L32Mod_anim", "S1500L32Mod/anim/", ""),
]
exps_anim.each{|exp|
  p "#{exp.name}..."
  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}


