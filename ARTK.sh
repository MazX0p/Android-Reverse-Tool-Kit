#!/bin/sh

echo -e "\e[1;31m
  ██                 █                         █  
  ██                 █                 █       █  
 █  █                █                 █       █  
 █  █                █                         █  
 █  █   █ ██      ██ █  █ ██     ██         ██ █  
 █  █   ██  █    █  ██  ██  █   █  █   █   █  ██  
 █  █   █    █  █    █  █   █  █    █  █  █    █  
 ████   █    █  █    █  █      █    █  █  █    █  
█    █  █    █  █    █  █      █    █  █  █    █  
█    █  █    █  █    █  █      █    █  █  █    █  
█    █  █    █  █    █  █      █    █  █  █    █  
█    █  █    █   █  ██  █       █  █   █   █  ██  
█    █  █    █    ██ █  █        ██    █    ██ █

████                                                   
█   █                                                  
█    █                                                 
█    █                                                 
█    █    ██    █    █    ██    █ ██    ████     ██    
█   █    █  █   █    █   █  █   ██  █  █    █   █  █   
████    █    █  █    █  █    █  █   █  █    █  █    █  
█  █    █    █  █    █  █    █  █       █      █    █  
█  █    ██████   █  █   ██████  █        ██    ██████  
█   █   █        █  █   █       █          █   █       
█   █   █        █  █   █       █      █    █  █       
█    █   █   █    ██     █   █  █      █    █   █   █  
█    █    ███     ██      ███   █       ████     ███ 

███████                 ██  █    █             
   █                     █  █   █   █          
   █                     █  █   █   █    █     
   █                     █  █  █         █     
   █      ██      ██     █  █  █       █████   
   █     █  █    █  █    █  █ █     █    █     
   █    █    █  █    █   █  ██      █    █     
   █    █    █  █    █   █  █ █     █    █     
   █    █    █  █    █   █  █  █    █    █     
   █    █    █  █    █   █  █  █    █    █     
   █    █    █  █    █   █  █   █   █    █  █  
   █     █  █    █  █    █  █   █   █    █  █  
   █      ██      ██     █  █    █  █     ██  \e[0m"
echo -e "\033[36m  
CHOSE AN ACTION \n 
1 - REVERSE USING APKTOOL\n 
2 - REVERSE USING DEX2JAR\n
3 - OPEN JD-GUI\n
4 - DOWNLOAD APKTOOL\n
5 - DOWNLOAD DEX2JAR\n
6 - DOWNLOAD JD-GUI\n
7 - EXIT\n "

echo -e "\e[1;31mBY: 0XLINUX\e[0m"

read runer
case $runer in 

	1*)
		echo "type path for .apk:" 
		read NAME_APK
		if [ -z "$NAME_APK" ]; then
                   echo "no files given"
                   exit 0
                else
                echo "type output folder this will make new dir"
                echo "take it emptey for a defult path"
                read path_re
		   apktool d -o $path_re $NAME_APK 
		   sleep 4
                fi
	;;
	
	2*)
		echo "type the path for .apk:" 
		read NAME_APK
		if [ -z "$NAME_APK" ]; then
                   echo "no files given"
                   exit 0
                else
                echo "type output folder"
                echo "ex /root/Desktop/classes.jar"
                read path_re
                echo "the output .jar will be in $path_re"
                sleep 5
		   d2j-dex2jar $NAME_APK -o $path_re
		   sleep 4
                fi
	;;
	
	3*)
		echo " 
                          █  ████              ██    █    █  ███   
                          █  █   █            █  █   █    █   █    
                          █  █    █          █    █  █    █   █    
                          █  █    █          █       █    █   █    
                          █  █    █          █       █    █   █    
                          █  █    █          █       █    █   █    
                          █  █    █  ██████  █  ███  █    █   █    
                          █  █    █          █    █  █    █   █    
                          █  █    █          █    █  █    █   █    
                     █    █  █    █          █    █  █    █   █    
                     █    █  █    █          █    █  █    █   █    
                      █  █   █   █            █  ██   █  █    █    
                       ██    ████              ██ █    ██    ███"
                sleep 3
                jd-gui

	;;

        4*)
		echo "
                      ██    ████    █    █  ███████   ██      ██    █       
                      ██    █   █   █   █      █     █  █    █  █   █       
                     █  █   █    █  █   █      █    █    █  █    █  █       
                     █  █   █    █  █  █       █    █    █  █    █  █       
                     █  █   █    █  █  █       █    █    █  █    █  █       
                     █  █   █   █   █ █        █    █    █  █    █  █       
                     █  █   ████    ██         █    █    █  █    █  █       
                     ████   █       █ █        █    █    █  █    █  █       
                    █    █  █       █  █       █    █    █  █    █  █       
                    █    █  █       █  █       █    █    █  █    █  █       
                    █    █  █       █   █      █    █    █  █    █  █       
                    █    █  █       █   █      █     █  █    █  █   █       
                    █    █  █       █    █     █      ██      ██    ██████"
                    
                sleep 3
                apt-get install apktool

	;;
	
        5*)
		echo "
                      ████    ██████  █    █    ██         █    ██    ████    
                      █   █   █       █    █   █  █        █    ██    █   █   
                      █    █  █       █    █  █    █       █   █  █   █    █  
                      █    █  █        █  █   █    █       █   █  █   █    █  
                      █    █  █        █  █   █    █       █   █  █   █    █  
                      █    █  █         ██         █       █   █  █   █   █   
                      █    █  █████     ██        █        █   █  █   ████    
                      █    █  █        █  █      █         █   ████   █  █    
                      █    █  █        █  █     █          █  █    █  █  █    
                      █    █  █        █  █    █      █    █  █    █  █   █   
                      █    █  █       █    █   █      █    █  █    █  █   █   
                      █   █   █       █    █  █        █  █   █    █  █    █  
                      ████    ██████  █    █  █         ██    █    █  █    █  
                        ██████"
               sleep 3
               apt-get install dex2jar


	;;

        6*)
		echo " 
                          █  ████              ██    █    █  ███   
                          █  █   █            █  █   █    █   █    
                          █  █    █          █    █  █    █   █    
                          █  █    █          █       █    █   █    
                          █  █    █          █       █    █   █    
                          █  █    █          █       █    █   █    
                          █  █    █  ██████  █  ███  █    █   █    
                          █  █    █          █    █  █    █   █    
                          █  █    █          █    █  █    █   █    
                     █    █  █    █          █    █  █    █   █    
                     █    █  █    █          █    █  █    █   █    
                      █  █   █   █            █  ██   █  █    █    
                       ██    ████              ██ █    ██    ███"
                sleep 3
                apt-get install jd-gui
	;;

	7*)
		echo -e "\e[1;31m
		████    █     █ ██████  
		█   █   █     █ █       
		█    █  █     █ █       
		█    █   █   █  █       
		█    █   █   █  █       
		█   █     █ █   █       
		████      █ █   █████   
		█   █      █    █       
		█    █     █    █       
		█    █     █    █       
		█    █     █    █       
		█   █      █    █       
		████       █    ██████\e[0m"
                   exit 0
	;;
	esac
	
