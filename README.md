# snakemake_template
Description of workflow. Template for snakemake workflows.

## **Dependencies**:
- `cutadapt` [v3.4](https://cutadapt.readthedocs.io/en/stable/)
- `fastqc` [v0.11.8](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
- `STAR` [v2.7.10a](https://github.com/alexdobin/STAR)
- `kallisto` [v#.#](https://pachterlab.github.io/kallisto/)
- `samtools`[v1.17](http://www.htslib.org/)
- `qualimap` [v2.2.2a](http://qualimap.conesalab.org/)
- `AnnData` [v0.9.1](https://anndata.readthedocs.io/en/latest/)
- `scanpy` [v1.7.2](https://scanpy.readthedocs.io/en/stable/)
- `umi_tools` [v#.#.#](link)
- `vsearch` [v2.17.0_linux_x86_64](https://github.com/torognes/vsearch)

### Install w/ `mamba`/`conda`:
#TODO- update
```
mamba create --name snakemake_template -c bioconda cutadapt fastqc star=2.7.11a kallisto bustools samtools bamtools qualimap anndata scanpy vsearch blast umi_tools

mamba activate snakemake_template
```


### Example run w/ `slurm`:
```
snakemake --cluster-config slurm.yml \
--cluster "sbatch --mail-type {cluster.mail-type} --mail-user {cluster.mail-user} -p {cluster.partition} -t {cluster.time} -N {cluster.nodes} --mem {cluster.mem} -D {cluster.chdir} -o {cluster.output}" \
-j 32 -k -p --nt
```