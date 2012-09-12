# Email Scanner

## Overview

**Email Scanner** is a simple ruby file with a method that takes a text as input.  The output is an array of hashes with two keys ":name" and ":email".

### Email key

The **:email key** uses regular expressions to find a valid email.  Valid email examples that are caught by this regular expression are -

1. first.last@gmail.com
2. < first.last@gmail.com >
3. [mailto:first.last@gmail.com]
4. < first.last+title@gmail.com >
5. firstlast@gmaii.com
6. f@gmail.com
7. first.lAST@gmail.com
8. FirST.LasT@GMaIL.com

### Name key

The **:name key** uses regular expressions to find any string in quotes immediately preceding the email address. If the name is not in quotes…it will not be found. If the name is not followed by an email address…it will not be found.

**Valid** => "Andrew Dennis"

**Invalid** => Andrew Dennis

### Expected Output
`[{:name => "Andrew Dennis", :email => "example@gmail.com"}, {:name => "Foo Bar", :email => "foo.bar@gmail.com"}, {:name => "Lionel Messi", :email => "MyLeftFoot@aol.com"}]`