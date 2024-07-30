# Synopsis

marktlib is a collection of usefull Puppet related things (facts, types, type aliases, ...) that markt.de requires for
their Puppet modules and which might be useful for other people/purposes/... as well.

# Contents

## facts

### `applied_puppet_classes`

This fact provides an array of all applied Puppet classes which might be useful for visualization in frontends (Foreman,
Puppetboards, ...) or for checking whether a specific class is loaded (without parsing the catalog resources).

### `lsbdistdesc` (Linux)

This is the same as the (deprecated) legacy fact `lsbdistdescription` (which is useful for graphing in Puppetboard
e.g.).

### `facterver`

This takes the default fact `facterversion` and makes a structured fact out of it, which splits major/minor/patch
(useful for configuring hierarchy levels e.g.).

### `puppetver`

This takes the default fact `puppetversion` and makes a structured fact out of it, which splits major/minor/patch
(useful for configuring hierarchy levels e.g.).

## type aliases

### `Marktlib::Duration`

Describes the time intervals used in Puppet configuration files (but might be useful elsewhere as this is a fairly
common way of declaring durations).

### `Marktlib::Port`

Alternative to `Stdlib::Port` which permits port 0 ("any port") what we usually don't want.

### `Marktlib::Portlist`

This can be used wherever a nonempty list of marktlib ports is needed.

### `Marktlib::SoL`

This type alias ("string or list of strings") can be used wherever a flexible datatype for a single nonempty string or a
nonempty list of nonempty strings is needed (e.g. single or multiple paths, single or multiple packages, ...).

### `Marktlib::EAoL`

This type alias ("email address or list of email addresses") can be used wherever a flexible datatype for an email
address or a nonempty list of email addresses is needed.

# Development

Development happens on GitHub in the well known way (fork, PR, issue, etc.).

Please feel free to report problems, suggest improvements, drop new ideas or teach us how to handle things better.
