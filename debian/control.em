Source: @(Package)
Section: misc
Priority: extra
Maintainer: @(Maintainer)
Build-Depends: debhelper (>= @(debhelper_version).0.0), @(', '.join(BuildDepends))
@[if Conflicts]Conflicts: @(', '.join(Conflicts))@\n@[end if]@
@[if Replaces]Replaces: @(', '.join(Replaces))@\n@[end if]@
Homepage: @(Homepage)
Standards-Version: 3.9.2

Package: @(Package.replace('gazebo-','gazebo7-'))
Architecture: any
Depends: ${shlibs:Depends}, ${misc:Depends}, @(', '.join(Depends))
Conflicts: @(Package), @(Package)-current, @(Package.replace('gazebo-','gazebo3-')), @(Package.replace('gazebo-','gazebo4-')), @(Package.replace('gazebo-','gazebo5-')), @(Package.replace('gazebo-','gazebo6-'))
Description: @(Description)
