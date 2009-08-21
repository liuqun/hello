# RADME自述文档 #

hello.c是一个用于测试嵌入式系统的"Hello World"程序


## 配置与编译 ##

如果使用默认的C编译器为本机编译hello.c程序，只需调用以下命令：
    autoconf
    ./configure
    make

通过给./configure指定--build=... --host=...选项可以配置交叉编译器，例如：
    autoconf
    ./configure --build=i386 --host=arm-linux
    make
注意：请事先设置好环境变量PATH，确保PATH中包含arm-linux-gcc所在目录，
否则在configure配置脚本执行时找不到交叉编译器会报警告信息，并且尝试使用gcc作为编译器

## 版权声明与许可协议 ##

Copyright (C) 2009 by 刘群

License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

