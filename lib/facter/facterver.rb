Facter.add(:facterver) do
  setcode do
    facterversion = Facter.value(:facterversion)

    facterversion.match(%r{^(\d+)\.(\d+)\.(.+)$}) do |match|
      facterver = { # rubocop:disable UselessAssignment
        full: match[0],
        major: match[1],
        minor: match[2],
        patch: match[3]
      }
    end
  end
end
