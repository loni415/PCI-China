# The next block would train models with a 5-year rolling window for Q1 (q=1), Q2 (q=4), and Q3 (q=7).
# for j in `seq 1 12` 
# do
#     for q in 1 4 7
#     do
#         for i in `seq 1 4` 
#         do
#             python pci.py --model="window_5_years_quarterly" --year=2023 --month=$q --gpu=0 --iterator=$i
#         done
#     done
# done

# The next block would train models with a 5-year rolling window for only Q3 (q=7).
for j in `seq 1 12` 
do
    for i in `seq 1 4` 
    do
        python pci.py --model="window_5_years_quarterly" --year=2023 --month=7 --gpu=0 --iterator=$i
    done
done