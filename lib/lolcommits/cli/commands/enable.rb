require 'lolcommits/cli/command'
require 'lolcommits/cli/fatals'

module Lolcommits
  module CLI
    class EnableCommand < Command
      def execute
        Fatals.die_on_fatal_platform_conditions!
        Fatals.die_if_not_vcs_repo!
        # TODO: change_dir_to_root_or_repo!
        # TODO: rationalize how to pass options to Installation.do_enable
        # previous version relied on all flags being global (yikes)
        Installation.do_enable
      end
    end
  end
end
