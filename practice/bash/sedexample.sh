#!/bin/bash -l
# I recite it from my notebook and it just used in my daily work. It hasn't been test in current platform

# sed for html for matched items.
sed -n '/<b>.*<\/b>/w bhead0.txt' test0.html            # process the test0.html with sed, write it to a file called bhead0.txt, / must be transformed to \/
sed -n -e '/<b>.*<\/b>/w bhead1.txt' test1.html         # process the test1.html with sed, write it to a file called bhead1.txt
# In Linux of Darwin Kernel Version, when use sed -i, you shoudl specify one file for backup file. Or it will work abnormally.
sed -i '' -e '/<b>[a-zA-Z].*<\b>/p' -e '/<b>[0-9]\+\.[0-9]\+..*' test1.html # process a file with two rules use -e to specify
sed -i '' -e '/<b>[a-zA-Z].*<\b>/p' -e '/<b>[0-9]\+\.[0-9]\+..*' test1.html # process a file with two rules use -e to specify
sed -n '/^wuguang \|^wutong/w wuguangwutong.txt' a.txt  # use | for or relationship.
sed -i '' -e '2,${/^wuguang \|^wutong/d}'        a.txt  # use | for or relationship and just lines 2~end, delete matched items
sed -i '' -e '2,8s/^wuguang \|^wutong/wu/g'      a.txt  # use replace for matched items.
sed -i '' -e '
2,8s/^wuguang \|^wutong/ng/g
1,9s/^wuguang \|^wutong/guang\&\&tong/g
3,7s/wuliang/liang/g
' a.txt                                                 # use replace for matched items with multi rules, & must be transformed with backslash.
