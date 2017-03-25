#!/usr/env/ruby

exp_hash = [
#  {"exp_tag"=>"S1000_from_ini280K", "dir"=>"S1000"}, 
  {"exp_tag"=>"S1100_from_ini280K", "dir"=>"S1100"}, 
  {"exp_tag"=>"S1200_from_ini280K", "dir"=>"S1200"}, 
  {"exp_tag"=>"S1300_from_ini280K", "dir"=>"S1300"}, 
  {"exp_tag"=>"S1310_from_ini280K", "dir"=>"S1310"}, 
  {"exp_tag"=>"S1325_from_ini280K", "dir"=>"S1325"}, 
  {"exp_tag"=>"S1380_from_ini280K", "dir"=>"S1380"}, 
  {"exp_tag"=>"S1450_from_ini280K", "dir"=>"S1450"},
  {"exp_tag"=>"S1550_from_ini280K", "dir"=>"S1550"},
]
exp_hash.each{|hash|
  `cat ./APESolarDepSWPO_ASolarConst_template.org | sed -e s/#__SolarConstTag__#/#{hash["dir"]}/g > APESolarDepSWPO_#{hash["exp_tag"]}_sub.org`  
  `emacs24 --batch --no-site-file -l ~/.emacs --visit APESolarDepSWPO_#{hash["exp_tag"]}.org --funcall org-html-export-to-html`
}
