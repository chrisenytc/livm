LivM
========

Start, Stop and Restart Apache, MySql and PHP.

### Description of problem

Sometimes it's annoying and time consuming to keep typing various codes to start,
stop or restart service apache, mysql and php.
This script automates this task for you and makes things simpler.

### How to use

1 - You need to give execute permission to the file

`sudo chmod 777 livm.sh`

2 - You need to move the file to be able to use it globally.

`sudo mv livm.sh /usr/bin/livm`

3 - Now when your touchpad stops working you just need to open the terminal and type the command below.

`livm`

### Options

to start use:

`livm start`

to stop use:

`livm stop`

to restart use:

`livm restart`

### Info

This solution is tested on Ubuntu and ElementaryOS more should work on any linux.

### License

The MIT License (MIT)

Copyright (c) 2013 Christopher EnyTC

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
