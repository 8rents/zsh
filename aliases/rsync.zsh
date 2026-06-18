# rsync
# =====
# For any exludes first set the environment variable $EZCLUDE using the export command. Values are quoted and comma separated.

RS_EXCLUDE="Desktop,Download,Share"

# Test commands are dry runs


# Merge
# ---------
# Does not perform deletions to mirror the current state of folders
alias rmerge="rsync -rlhc --info=progress2,file0 exclude={$RS_EXCLUDE}"
alias rmerge-test="rsync -rlhcn --info=progress2,file0 exclude={$RS_EXCLUDE}"


# Mirror
# ---------
# Performs deletions to mirror the current state of foldera
alias rbackup="rsync -a --info=progress2,file0 exclude={$RS_EXCLUDE}"
alias rbackup-test="rsync -an --info=progress2,file0 exclude={$RS_EXCLUDE}"