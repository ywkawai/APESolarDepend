#!/usr/env/ruby

exp_hash = [
  {"exp_tag"=>"S900_from_ini280K", "dir"=>"S900"}, 
  {"exp_tag"=>"S1000_from_ini280K", "dir"=>"S1000"}, 
  {"exp_tag"=>"S1100_from_ini280K", "dir"=>"S1100"}, 
  {"exp_tag"=>"S1200_from_ini280K", "dir"=>"S1200"}, 
  {"exp_tag"=>"S1300_from_ini280K", "dir"=>"S1300"}, 
  {"exp_tag"=>"S1380_from_ini280K", "dir"=>"S1380"}, 
  {"exp_tag"=>"S1450_from_ini280K", "dir"=>"S1450"},
]
exp_hash.each{|hash|
  `cat ./APESolarDepDYNO_ASolarConst_template.org | sed -e s/#__SolarConstTag__#/#{hash["dir"]}/g > APESolarDepDYNO_#{hash["exp_tag"]}_sub.org`  
  `emacs24 --batch --no-site-file -l ~/.emacs --visit APESolarDepDYNO_#{hash["exp_tag"]}.org --funcall org-html-export-to-html`
}
