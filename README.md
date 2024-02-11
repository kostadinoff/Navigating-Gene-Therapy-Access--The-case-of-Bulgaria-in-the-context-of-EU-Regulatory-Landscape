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
@article{Kostadinov_2024, 
  title={Navigating Gene Therapy Access: The Case of Bulgaria in the Context of the EU Regulatory Landscape}, 
  volume={12}, 
  rights={http://creativecommons.org/licenses/by/3.0/}, 
  ISSN={2227-9032}, 
  url={https://www.mdpi.com/2227-9032/12/4/458}, 
  DOI={10.3390/healthcare12040458}, 
  number={4}, 
  journal={Healthcare},
  author={Kostadinov, Kostadin and Marinova, Yuliyana and Dimitrov, Kostadin and Hristova-Atanasova, Eleonora and Iskrov, Georgi and Stefanov, Rumen}, 
  year={2024}, 
  month={1}, 
  pages={458}, 
  language={en} 
}
```

