Facter.add(:lsbdistdesc) do
  confine kernel: 'Linux'

  setcode do
    os = Facter.value(:os)
    os['distro']['description']
  end
end
