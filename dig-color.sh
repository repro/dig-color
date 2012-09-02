# 20120222 bachm9 
dig-color () { 
  dig $* | awk '
    !/^;/    { print "\033[1;32m"$0 }
    /^;[^;]/ { print "\033[1;35m"$0 }
    /^;;/    { print "\033[1;36m"$0 }
    END      { print "\033[0m" }
  '; 
}

dig-color $*

