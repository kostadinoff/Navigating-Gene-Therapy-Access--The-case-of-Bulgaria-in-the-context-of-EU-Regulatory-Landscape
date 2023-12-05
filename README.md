# Navigating Gene Therapy Access: The case of Bulgaria in the context of EU Regulatory Landscape

## Description

This repository contains the data and code used for the article "Navigating Gene Therapy Access: The case of Bulgaria in the context of EU Regulatory Landscape." The repository is organized into the following main directories:

```
📦 Navigating-Gene-Therapy-Access
 ┣ 📂 data_requests
 ┃ ┣ 📜 NHIF_request.pdf
 ┃ ┣ 📜 NHIF_answer.pdf
 ┃ ┣ 📜 NCPRMP_request.pdf
 ┃ ┗ 📜 NCPRMP_answer.pdf
 ┣ 📜 ema_list.xlsx
 ┣ 📜 literature_review_references.bib
 ┗ 📜 ema_gene.tiff

```

## Overview


### `data_requests`

This directory holds the data requests sent to the National Health Insurance Fund (NHIF) and the National Council on Prices and Reimbursement of Medicinal Products (NCPRMP). It includes the initial requests and their corresponding responses. Both requests and responses are in Bulgarian language. The files are named as follows:

- [NHIF_request.pdf](data_requests/NHIF_request.pdf)
- [NHIF_answer.pdf](data_requests/NHIF_answer.pdf)
- [NCPRMP_request.pdf](data_requests/NCPRMP_request.pdf)
- [NCPRMP_answer.pdf](data_requests/NCPRMP_answer.pdf)

### `ema_list.xlsx`

This Excel file, `ema_list.xlsx`, encompasses a list of all Advanced Therapy Medicinal Products (ATMP) approved by the European Medicines Agency (EMA) as of April 1, 2023. The list is based on the [EMA's list of ATMPs](https://www.ema.europa.eu/en/human-regulatory/overview/advanced-therapy-medicinal-products-overview) and the [EMA's list of orphan medicines](https://www.ema.europa.eu/en/human-regulatory/overview/orphan-designation-overview). The file contains the following columns:

- `name` - the name of the ATMP
- `type` - the type of the ATMP (gene therapy, somatic cell therapy, tissue-engineered product)
- `orphan` - whether the ATMP has an orphan designation (yes, no)
- `prime` - whether the ATMP has a PRIME designation (yes, no)
- `comments` - whether the ATMP had been withdrawn (with date of withdrawal) 
- `date` - the date of the ATMP's approval

### `literature_review_references.bib`

The BibTeX file `literature_review_references.bib` contains the references utilized in the article.

### `ema_gene.tiff`

The figure `ema_gene.tiff` is the visual representation used in the article.

Feel free to explore the directories and files for more details.

## Citation

If you find this repository helpful, please consider citing it as follows:

```bibtex
@misc{Kostadinov_2023_data,
  title = {Navigating Gene Therapy Access: The case of Bulgaria in the context of EU Regulatory Landscape - Data repository},
  author = {Kostadinov, Kostadin and Iskrov, Georgi and Marinova, Yuliana and Hristova, Eleonora and Stefanov, Rumen},
  howpublished = {\url{https://github.com/kostadinoff/Navigating-Gene-Therapy-Access--The-case-of-Bulgaria-in-the-context-of-EU-Regulatory-Landscape}},
  year = {2023},
}
```