Facter.add(:lsbdistdesc) do
  setcode do
    os = Facter.value(:os)
    os['distro']['description']
  end
end
