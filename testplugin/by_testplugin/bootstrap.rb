# #-------------------------------------------------------------------------------
# #
# #   Author: Berkin YILMAZ
# #   Copyright: -
# #   License: -
# #
# #-------------------------------------------------------------------------------

# require 'sketchup.rb'

# module BY_Plugins::BY_TestPlugin

#     ### CONSTANTS ### ------------------------------------------------------------

#     PLATFORM_WIN = (Sketchup.platform == :platform_win)
#     PLATFORM_OSX = (Sketchup.platform == :platform_osx)

#     # Minimum version of SketchUp required to run the extension.
#     MINIMUM_SKETCHUP_VERSION = 14

#     ### COMPATIBILITY CHECK ### --------------------------------------------------

#     # TODO: Migrate this version check handling into a reusable Skippy module.
#     if Sketchup.version.to_i < MINIMUM_SKETCHUP_VERSION
#         # Not localized because we don't want the Translator and related
#         # dependencies to be forced to be compatible with older SketchUp versions.
#         version_name = "20#{MINIMUM_SKETCHUP_VERSION}"
#         message = "#{EXTENSION[:name]} require SketchUp #{version_name} or newer."
#         messagebox_open = false # Needed to avoid opening multiple message boxes.
#         # Defer with a timer in order to let SketchUp fully load before displaying
#         # modal dialog boxes.
#         UI.start_timer(0, false) {
#             unless messagebox_open
#             messagebox_open = true
#             UI.messagebox(message)
#             # Must defer the disabling of the extension as well otherwise the
#             # setting won't be saved. I assume SketchUp save this setting after it
#             # loads the extension.
#             @extension.uncheck
#             end
#         }
#     else # Sketchup.version
    
#         begin
#             require 'by_testplugin/main.rb'
#         rescue Exception => error
#             UI.messagebox("BY_TestPlugin Begin Error.")
#         end

#     end # if Sketchup.version

# end # module