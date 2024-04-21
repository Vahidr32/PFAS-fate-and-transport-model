# example of compiling the code
## first load the intel oneAPI environment
source /opt/intel/oneapi/setvars.sh
# compile the code
cd /home/rafieiva/MyDataBase/SourceCode_PFAS
rm -rf build
mkdir build
cd /home/rafieiva/MyDataBase/SourceCode_PFAS/build
cp ../modflow/*.f* .
cp ../rt3d/*.f* .
cp ../smrt/*.f* .
cp ../swat/*.f* .
### include -g for debugging or -O3 for optimization
ifx -c *.f*
ifx -c ../modflow/*.f*
ifx -c ../rt3d/*.f*
ifx -c ../swat/*.f*
ifx -c ../smrt/*.f*
ifx -o swat-modflow3 *.o
cp /home/rafieiva/MyDataBase/SourceCode_PFAS/build/swat-modflow3 /home/rafieiva/MyDataBase/SWAT_MODFLOW_PFAS_example_huron/
cd /home/rafieiva/MyDataBase/SWAT_MODFLOW_PFAS_example_huron/
./swat-modflow3

# debugging if compiled with -g
#/usr/bin/gdb
#file swat-modflow3
#run swat-modflow3