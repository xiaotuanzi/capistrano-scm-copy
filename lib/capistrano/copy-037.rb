require "capistrano/scm/plugin"

module Capistrano
  class SCM
    class Copy < ::Capistrano::SCM::Plugin
      def set_defaults
      end

      def register_hooks
        after 'deploy:new_release_path', 'copy:create_release'
        after 'deploy:finished', 'copy:clean'
      end

      def define_tasks
        eval_rakefile File.expand_path("../tasks/copy-037.rake", __FILE__)
      end
    end
  end
end
