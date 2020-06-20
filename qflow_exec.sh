#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /home/artur/proj
#-------------------------------------------

# /usr/local/share/qflow/scripts/synthesize.sh /home/artur/proj PPA_adder /home/artur/proj/source/PPA_adder.v || exit 1
# /usr/local/share/qflow/scripts/placement.sh -d /home/artur/proj PPA_adder || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  /home/artur/proj PPA_adder || exit 1
# /usr/local/share/qflow/scripts/router.sh /home/artur/proj PPA_adder || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d /home/artur/proj PPA_adder || exit 1
# /usr/local/share/qflow/scripts/migrate.sh /home/artur/proj PPA_adder || exit 1
# /usr/local/share/qflow/scripts/drc.sh /home/artur/proj PPA_adder || exit 1
# /usr/local/share/qflow/scripts/lvs.sh /home/artur/proj PPA_adder || exit 1
/usr/local/share/qflow/scripts/gdsii.sh /home/artur/proj PPA_adder || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh /home/artur/proj PPA_adder || exit 1
# /usr/local/share/qflow/scripts/display.sh /home/artur/proj PPA_adder || exit 1
