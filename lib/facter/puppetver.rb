Facter.add(:puppetver) do
  setcode do
    puppetversion = Facter.value(:puppetversion)

    puppetversion.match(%r{^(\d+)\.(\d+)\.(.+)$}) do |match|
      puppetver = { # rubocop:disable UselessAssignment
        full: match[0],
        major: match[1],
        minor: match[2],
        patch: match[3]
      }
    end
  end
end
