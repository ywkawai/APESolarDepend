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
=begin
  Exp.new("S1200_mean_state", "S1200/mean_state/", ""),
  Exp.new("S1300_mean_state", "S1300/mean_state/", ""),
  Exp.new("S1380_mean_state", "S1380/mean_state/", ""),
  Exp.new("S1450_mean_state", "S1450/mean_state/", ""),
=end
=begin
  Exp.new("S1000_mean_state", "S1000/mean_state/", ""),    
  Exp.new("S1100_mean_state", "S1100/mean_state/", ""),  
  Exp.new("S1150_mean_state", "S1150/mean_state/", ""),  
  Exp.new("S1500_mean_state", "S1500L32Mod/mean_state/", ""),
  Exp.new("S1600_mean_state", "S1600L32Mod/mean_state/", ""),
  Exp.new("S1175_from_S1200_mean_state", "S1175_from_S1200/mean_state/", ""),
  Exp.new("S1650_from_S1000_mean_state", "S1650_from_S1000/mean_state/", ""),
  Exp.new("S1700_from_S1000_mean_state", "S1700_from_S1000/mean_state/", ""),
=end
]
exps_mean_state.each{|exp|
  p "#{exp.name}..."
  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}
#--------------------------------------------------------

exps_tserise = [
  Exp.new("S1200_tserise", "S1200/tserise/", ""),
  Exp.new("S1300_tserise", "S1300/tserise/", ""),
  Exp.new("S1380_tserise", "S1380/tserise/", ""),
  Exp.new("S1450_tserise", "S1450/tserise/", ""),
=begin
  Exp.new("S1000_tserise", "S1000/tserise/", ""),    
  Exp.new("S1100_tserise", "S1100/tserise/", ""),  
  Exp.new("S1150_tserise", "S1150/tserise/", ""),  
  Exp.new("S1500_tserise", "S1500L32Mod/tserise/", ""),
  Exp.new("S1600_tserise", "S1600L32Mod/tserise/", ""),
  Exp.new("S1175_from_S1200_tserise", "S1175_from_S1200/tserise/", ""),
  Exp.new("S1650_from_S1000_tserise", "S1650_from_S1000/tserise/", ""),
  Exp.new("S1700_from_S1000_tserise", "S1700_from_S1000/tserise/", ""),
=end
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
#  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}

exps_anim = [
  Exp.new("S1380_anim", "S1380/anim/", ""),
  Exp.new("S1500L32Mod_anim", "S1500L32Mod/anim/", ""),
]
exps_anim.each{|exp|
  p "#{exp.name}..."
#  exp.create_thumb(DCMODEL_THUM_ORIGIN, "png")
}


