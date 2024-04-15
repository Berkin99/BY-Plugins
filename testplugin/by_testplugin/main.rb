#-------------------------------------------------------------------------------
#
#   Author: Berkin YILMAZ
#   Copyright: -
#   License: -
#
#-------------------------------------------------------------------------------

require 'sketchup.rb'

module BY_Plugins::BY_TestPlugin

unless file_loaded?(__FILE__)
    uimenu = UI.menu('Plugins').add_submenu('BY_Plugins')
    uimenu.add_item('printHello') {self.printHello}
    uimenu.add_item('randomPush') {self.randomPush}
    file_loaded(__FILE__)
end

def self.printHello
    UI.messagebox('Hello from BY_TestPlugin')
end  

def self.randomPush
    model = Sketchup.active_model
    selected = model.selection.to_a
    faces = selected.grep(Sketchup::Face)
    
    faces.each do |face|
        face.pushpull(rand(20))
    end
end

end