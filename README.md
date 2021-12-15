# RepPackageHOMRS

This is the replication package with data and results for the paper "HOMRS: High Order Metamorphic Relations Selector for Deep Neural Networks".

## RQ1: To what extent are HMR built using HOMRS better than randomly selected MR combinations?

Results relevant to this question are present in `HOMRS/MNIST/save/` and `HOMRS/SVNH/save/`.

List of files:

* `results_[nc|dsa]_[0-9].csv` are the *i*-th run obtained Pareto Front for a given coverage criteria. We chose only the most balanced ('best') set for each of the run.
* `results_[nc|dsa]_full.csv` results on the calibration set for the best sets
* `results_[nc|dsa]_test_full.csv` same but with test set
* `results_random_[nc|dsa]_full(_test).csv` results of calibration/test set over the randomly sampled HMR sets.
* `t_verif/` directory with the saved numpy array containing the data to compute the uncertainty profile. Profile for NC calibration set, NC test set and Random (calibration set) (`nc_0_t.npy`) as well as OOD/AE... considered

`.csv` files were used and compared to generate statistics, `t_verif/` data were used for the uncertainty profile.

We also provide the computation log in `HOMRS/(dataset)/log/`

## RQ2: How does HOMRS hyper-parameters influence the HMR obtained?

Results relevant to this question are presented in `hyper_opt/MNIST/save`

List of files:

* `results_nc_{i}_eval_{x}_nb_{y}_unc_{z}.csv` are the *i*-th run obtained Pareto Front for the given (x, y, z) hyper-parameters. Similarly to RQ1, we chose for each the most balanced.
* `eval.xlsx` summary of the chosen sets (along with the hyper parameters used). Note that since we did 3 repetitions for each hyper parameters set, there are 3 sets everytime
* `results_{i}_nc_[full|val].csv` results over the test/calibration set for each HMR set (each of the file contain the 3 repetitions)

## RQ3: How does HOMRS compare to other generation techniques in term of coverage, number of adversarial examples generated and validity?

Results relevant to this question are present in `[DLFuzz|DeepXplore|Distribution..]/[MNIST|SVHN]/res` as well as the same file as in RQ1.

List of files:

* `log_run.txt` results obtained when running each method implementation
* `*.npy` uncertainty profile for each method (`0_t.npy`) as well as OOD/AE... considered
* `log_thresh.txt` results obtained when running code to obtain the uncertainty profile for each method, which allow us to get the number of adversarial examples from the generated images of the method.

We also give the generated images the method generated (`generated_inputs/`), as well as the models weights (`*.h5`) and the seed used (`seed.npy`) that are the same for a given dataset. We also provide the command we used while using each method implementation: DLFuzz (https://github.com/turned2670/DLFuzz), DeepXplore (https://github.com/peikexin9/deepxplore) and DistAware (https://github.com/swa112003/DistributionAwareDNNTesting).

## RQ4: How does HOMRS compare in term of time complexity?

We used the files in `DLFuzz/TimeComp`

List files:

* `log_run_{i}.txt`: the run log containing the time information (as well as coverage and number of generated images)

### In Section Discussion experiment

The files used for the experiment that was done to discuss VAE limitations (see Section Discussion of the paper) can be found in `Distribution../MNIST` under `
vae_res_thresh_adv.txt`. The adversarial dataset is the same that is present in the .zip that is situated in `HOMRS/MNIST/datasets/` which contains also the ood datasets that were used to compute the uncertainty profile.
