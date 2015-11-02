#!/bin/bash
# server=build.palaso.org
# build_type=bt435
# root_dir=.
# Auto-generated by https://github.com/chrisvire/BuildUpdate.
# Do not edit this file by hand!

cd "$(dirname "$0")"

# *** Functions ***
force=0
clean=0

while getopts fc opt; do
case $opt in
f) force=1 ;;
c) clean=1 ;;
esac
done

shift $((OPTIND - 1))

copy_auto() {
if [ "$clean" == "1" ]
then
echo cleaning $2
rm -f ""$2""
else
where_curl=$(type -P curl)
where_wget=$(type -P wget)
if [ "$where_curl" != "" ]
then
copy_curl $1 $2
elif [ "$where_wget" != "" ]
then
copy_wget $1 $2
else
echo "Missing curl or wget"
exit 1
fi
fi
}

copy_curl() {
echo "curl: $2 <= $1"
if [ -e "$2" ] && [ "$force" != "1" ]
then
curl -# -L -z $2 -o $2 $1
else
curl -# -L -o $2 $1
fi
}

copy_wget() {
echo "wget: $2 <= $1"
f=$(basename $2)
d=$(dirname $2)
cd $d
wget -q -L -N $1
cd -
}


# *** Results ***
# build: FLEx Bridge-master-Precise64-Continuous (bt435)
# project: FLEx Bridge
# URL: http://build.palaso.org/viewType.html?buildTypeId=bt435
# VCS: https://github.com/sillsdev/flexbridge.git [master]
# dependencies:
# [0] build: Chorus-Documentation (bt216)
#     project: Chorus
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt216
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"Chorus_Help.chm"=>"lib/common"}
#     VCS: https://github.com/sillsdev/chorushelp.git [master]
# [1] build: chorus-precise64-master Continuous (bt323)
#     project: Chorus
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt323
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"Autofac.dll"=>"lib/common"}
#     VCS: https://github.com/sillsdev/chorus.git [master]
# [2] build: chorus-precise64-master Continuous (bt323)
#     project: Chorus
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt323
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"Chorus.exe"=>"lib/ReleaseMono", "LibChorus.dll"=>"lib/ReleaseMono", "ChorusHub.exe"=>"lib/ReleaseMono", "ChorusMerge.exe"=>"lib/ReleaseMono", "Mercurial-i686.zip"=>"lib/ReleaseMono", "Mercurial-x86_64.zip"=>"lib/ReleaseMono", "LibChorus.TestUtilities.dll"=>"lib/ReleaseMono"}
#     VCS: https://github.com/sillsdev/chorus.git [master]
# [3] build: chorus-precise64-master Continuous (bt323)
#     project: Chorus
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt323
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"debug/Chorus.exe"=>"lib/DebugMono", "debug/LibChorus.dll"=>"lib/DebugMono", "debug/ChorusHub.exe"=>"lib/DebugMono", "debug/ChorusMerge.exe"=>"lib/DebugMono", "Mercurial-i686.zip"=>"lib/DebugMono", "Mercurial-x86_64.zip"=>"lib/DebugMono", "debug/LibChorus.TestUtilities.dll"=>"lib/DebugMono", "MercurialExtensions/**"=>"MercurialExtensions"}
#     VCS: https://github.com/sillsdev/chorus.git [master]
# [4] build: Helpprovider (bt225)
#     project: Helpprovider
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt225
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"Vulcan.Uczniowie.HelpProvider.dll"=>"lib/common"}
#     VCS: http://hg.palaso.org/helpprovider []
# [5] build: IPC-Precise64 (bt279)
#     project: IPC Library
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt279
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"IPCFramework.*"=>"lib/ReleaseMono"}
#     VCS: https://bitbucket.org/smcconnel/ipcframework [develop]
# [6] build: IPC-Precise64 (bt279)
#     project: IPC Library
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt279
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"IPCFramework.*"=>"lib/DebugMono"}
#     VCS: https://bitbucket.org/smcconnel/ipcframework [develop]
# [7] build: L10NSharp Mono continuous (bt271)
#     project: L10NSharp
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt271
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"L10NSharp.dll"=>"lib/ReleaseMono"}
#     VCS: https://bitbucket.org/sillsdev/l10nsharp []
# [8] build: L10NSharp Mono continuous (bt271)
#     project: L10NSharp
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt271
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"L10NSharp.dll"=>"lib/DebugMono"}
#     VCS: https://bitbucket.org/sillsdev/l10nsharp []
# [9] build: icucil-precise64-Continuous (bt281)
#     project: Libraries
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt281
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"icu*.dll"=>"lib/ReleaseMono", "icu*.config"=>"lib/ReleaseMono"}
#     VCS: https://github.com/sillsdev/icu-dotnet [master]
# [10] build: icucil-precise64-Continuous (bt281)
#     project: Libraries
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt281
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"icu*.dll"=>"lib/DebugMono", "icu*.config"=>"lib/DebugMono"}
#     VCS: https://github.com/sillsdev/icu-dotnet [master]
# [11] build: palaso-precise64-master Continuous (bt322)
#     project: libpalaso
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt322
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"SIL.Core.dll"=>"lib/ReleaseMono", "SIL.TestUtilities.dll"=>"lib/ReleaseMono", "SIL.Windows.Forms.dll"=>"lib/ReleaseMono", "SIL.Lift.dll"=>"lib/ReleaseMono"}
#     VCS: https://github.com/sillsdev/libpalaso.git [master]
# [12] build: palaso-precise64-master Continuous (bt322)
#     project: libpalaso
#     URL: http://build.palaso.org/viewType.html?buildTypeId=bt322
#     clean: false
#     revision: latest.lastSuccessful
#     paths: {"debug/SIL.Core.dll"=>"lib/DebugMono", "debug/SIL.TestUtilities.dll"=>"lib/DebugMono", "debug/SIL.Windows.Forms.dll"=>"lib/DebugMono", "debug/SIL.Lift.dll"=>"lib/DebugMono"}
#     VCS: https://github.com/sillsdev/libpalaso.git [master]

# make sure output directories exist
mkdir -p ./MercurialExtensions
mkdir -p ./MercurialExtensions/fixutf8
mkdir -p ./lib/DebugMono
mkdir -p ./lib/ReleaseMono
mkdir -p ./lib/common

# download artifact dependencies
copy_auto http://build.palaso.org/guestAuth/repository/download/bt216/latest.lastSuccessful/Chorus_Help.chm ./lib/common/Chorus_Help.chm
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/Autofac.dll?branch=%3Cdefault%3E ./lib/common/Autofac.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/Chorus.exe?branch=%3Cdefault%3E ./lib/ReleaseMono/Chorus.exe
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/LibChorus.dll?branch=%3Cdefault%3E ./lib/ReleaseMono/LibChorus.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/ChorusHub.exe?branch=%3Cdefault%3E ./lib/ReleaseMono/ChorusHub.exe
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/ChorusMerge.exe?branch=%3Cdefault%3E ./lib/ReleaseMono/ChorusMerge.exe
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/Mercurial-i686.zip?branch=%3Cdefault%3E ./lib/ReleaseMono/Mercurial-i686.zip
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/Mercurial-x86_64.zip?branch=%3Cdefault%3E ./lib/ReleaseMono/Mercurial-x86_64.zip
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/LibChorus.TestUtilities.dll?branch=%3Cdefault%3E ./lib/ReleaseMono/LibChorus.TestUtilities.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/debug/Chorus.exe?branch=%3Cdefault%3E ./lib/DebugMono/Chorus.exe
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/debug/LibChorus.dll?branch=%3Cdefault%3E ./lib/DebugMono/LibChorus.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/debug/ChorusHub.exe?branch=%3Cdefault%3E ./lib/DebugMono/ChorusHub.exe
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/debug/ChorusMerge.exe?branch=%3Cdefault%3E ./lib/DebugMono/ChorusMerge.exe
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/Mercurial-i686.zip?branch=%3Cdefault%3E ./lib/DebugMono/Mercurial-i686.zip
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/Mercurial-x86_64.zip?branch=%3Cdefault%3E ./lib/DebugMono/Mercurial-x86_64.zip
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/debug/LibChorus.TestUtilities.dll?branch=%3Cdefault%3E ./lib/DebugMono/LibChorus.TestUtilities.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/.guidsForInstaller.xml?branch=%3Cdefault%3E ./MercurialExtensions/.guidsForInstaller.xml
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/Dummy.txt?branch=%3Cdefault%3E ./MercurialExtensions/Dummy.txt
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/.gitignore?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/.gitignore
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/.guidsForInstaller.xml?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/.guidsForInstaller.xml
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/.hg_archival.txt?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/.hg_archival.txt
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/.hgignore?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/.hgignore
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/README.?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/README.
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/buildcpmap.py?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/buildcpmap.py
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/cpmap.pyc?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/cpmap.pyc
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/fixutf8.py?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/fixutf8.py
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/fixutf8.pyc?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/fixutf8.pyc
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/fixutf8.pyo?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/fixutf8.pyo
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/osutil.py?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/osutil.py
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/osutil.pyc?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/osutil.pyc
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/osutil.pyo?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/osutil.pyo
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/win32helper.py?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/win32helper.py
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/win32helper.pyc?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/win32helper.pyc
copy_auto http://build.palaso.org/guestAuth/repository/download/bt323/latest.lastSuccessful/MercurialExtensions/fixutf8/win32helper.pyo?branch=%3Cdefault%3E ./MercurialExtensions/fixutf8/win32helper.pyo
copy_auto http://build.palaso.org/guestAuth/repository/download/bt225/latest.lastSuccessful/Vulcan.Uczniowie.HelpProvider.dll ./lib/common/Vulcan.Uczniowie.HelpProvider.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt279/latest.lastSuccessful/IPCFramework.dll ./lib/ReleaseMono/IPCFramework.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt279/latest.lastSuccessful/IPCFramework.dll ./lib/DebugMono/IPCFramework.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt271/latest.lastSuccessful/L10NSharp.dll ./lib/ReleaseMono/L10NSharp.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt271/latest.lastSuccessful/L10NSharp.dll ./lib/DebugMono/L10NSharp.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt281/latest.lastSuccessful/icu.net.dll ./lib/ReleaseMono/icu.net.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt281/latest.lastSuccessful/icu.net.dll.config ./lib/ReleaseMono/icu.net.dll.config
copy_auto http://build.palaso.org/guestAuth/repository/download/bt281/latest.lastSuccessful/icu.net.dll ./lib/DebugMono/icu.net.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt281/latest.lastSuccessful/icu.net.dll.config ./lib/DebugMono/icu.net.dll.config
copy_auto http://build.palaso.org/guestAuth/repository/download/bt322/latest.lastSuccessful/SIL.Core.dll?branch=%3Cdefault%3E ./lib/ReleaseMono/SIL.Core.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt322/latest.lastSuccessful/SIL.TestUtilities.dll?branch=%3Cdefault%3E ./lib/ReleaseMono/SIL.TestUtilities.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt322/latest.lastSuccessful/SIL.Windows.Forms.dll?branch=%3Cdefault%3E ./lib/ReleaseMono/SIL.Windows.Forms.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt322/latest.lastSuccessful/SIL.Lift.dll?branch=%3Cdefault%3E ./lib/ReleaseMono/SIL.Lift.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt322/latest.lastSuccessful/debug/SIL.Core.dll?branch=%3Cdefault%3E ./lib/DebugMono/SIL.Core.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt322/latest.lastSuccessful/debug/SIL.TestUtilities.dll?branch=%3Cdefault%3E ./lib/DebugMono/SIL.TestUtilities.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt322/latest.lastSuccessful/debug/SIL.Windows.Forms.dll?branch=%3Cdefault%3E ./lib/DebugMono/SIL.Windows.Forms.dll
copy_auto http://build.palaso.org/guestAuth/repository/download/bt322/latest.lastSuccessful/debug/SIL.Lift.dll?branch=%3Cdefault%3E ./lib/DebugMono/SIL.Lift.dll
# End of script
