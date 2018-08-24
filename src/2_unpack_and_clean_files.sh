# unzip and rename downloaded files
# combine files with same event type into a single file.
# here we will get three combined log file: all_play_log, all_down_log, all_search_log

## working dir is src

#### process play log ####
# unzip play log
cd ../data/raw/
for f in *_play.log.tar.gz    # for every file in list: *_play.log.tar.gz 
do     # for every f, repest do to done
 echo "Processing $f"   # done forget the '$' after the first quote 'f'
 tar -xvzf $f     # unzip
done

mv *_play.log ../play/       # move to play folder

# append file_name to each row (will be used for date)
cd ../play/
for f in *.log
do
 echo "Processing $f"
 awk -v var="$f" '{print $0,"\t",substr(var,1,8)}' $f > ${f}.fn    # rename file
done

# cat all log with filename to one file
cat *.log.fn > all_play_log    # combine all '*.log.fn' files into single file all_play_log
rm *.log 
rm *.log.fn



#### process down log ####
# unzip down log
cd ../data/raw/
for f in *_down.log.tar.gz
do
 echo "Processing $f"
 tar -xvzf $f && mv *_down.log  ../down/${f//".tar.gz"/""}
done

# append file_name to each row (will be used for date)
cd ../down/
for f in *.log
do
 echo "Processing $f"
 awk -v var="$f" '{print $0,"\t",substr(var,1,8)}' $f > ${f}.fn
done

# cat all log with filename to one file
cat *.log.fn > all_down_log
rm *.log
rm *.log.fn



#### process search log ####
# unzip search log
cd ../data/raw/
for f in *_search.log.tar.gz
do
 echo "Processing $f"
 tar -xvzf $f && mv *_search.log  ../search/${f//".tar.gz"/""}
done

# append file_name to each row (will be used for date)
cd ../search/
for f in *.log
do
 echo "Processing $f"
 awk -v var="$f" '{print $0,"\t",substr(var,1,8)}' $f > ${f}.fn
done

# cat all log with filename to one file
cat *.log.fn > all_search_log
rm *.log
rm *.log.fn
