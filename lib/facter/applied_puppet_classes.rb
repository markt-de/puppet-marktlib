Facter.add(:applied_puppet_classes) do
  puppet_vardir = Facter.value(:puppet_vardir)
  classes_file = '%s/%s' % [puppet_vardir, 'state/classes.txt'] # rubocop:disable Style/FormatStringToken

  confine do
    File.readable?(classes_file)
  end

  setcode do
    applied_puppet_classes = []

    File.foreach(classes_file, chomp: true, mode: 'rt') do |line|
      applied_puppet_classes.push(line) unless line.empty? || line[%r{^\s+$}]
    end

    applied_puppet_classes.sort
  end
end
