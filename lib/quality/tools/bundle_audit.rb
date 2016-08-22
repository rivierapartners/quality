module Quality
  module Tools
    # Adds 'bundler_audit' tool support to quality gem
    module BundleAudit
      private

      def self.command_name
        'bundle-audit'
      end

      def quality_bundle_audit
        ratchet_quality_cmd('bundle-audit', args: '') do |line|
          if line =~ /^Name: /
            1
          else
            0
          end
        end
      end
    end
  end
end
