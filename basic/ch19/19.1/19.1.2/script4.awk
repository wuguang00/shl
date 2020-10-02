BEGIN {
    print "The latest list of users and shells"
    print " UserID \t Shell "
    print "-------------\t\t --------"
    FS=":"
}

{
    print $1 "              \t\t "   $7
}

END {                                   # END must match a {
    print "This concludes the listing"
}
