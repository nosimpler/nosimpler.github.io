---
permalink: /projects/
title: "Projects"
published: false   # parked until there is portfolio material (figures, code, posts)
---

## Synchrony and structure in coupled-cell networks

**Where:** PhD thesis, Boston University, 2014  
**Methods:** Lattice theory, contraction analysis, Python (SymPy, NetworkX)

Stewart's lattice of balanced polydiagonals describes where synchrony is possible in a network of coupled cells. I constructed a dual lattice of subspaces transverse to it, proved the two are anti-isomorphic, and showed that contraction respects the ordering. The dual lattice is where synchronization actually happens. When a synchrony subspace and a transverse subspace contract together, a subpopulation of cells is pinned to fixed potentials, a silent configuration I called a glyph. A V1–LGN model built on this gives one account of an unexplained SSVEP effect, where flicker frequencies 1 Hz apart produce alpha-band power differing by an order of magnitude.

## Proofreading connectomes with graph neural networks

**Where:** Baylor College of Medicine, 2025–2026  
**Methods:** PyTorch Geometric, DataJoint, CAVE/PyChunkedGraph, mesh processing

Large electron-microscopy reconstructions such as MICrONS (mouse visual cortex) and H01 (human temporal cortex) contain merge and split errors that are expensive to fix by hand. I developed geometric graph neural networks to detect these errors on top of the existing segmentations, reaching 90% recall on error detection. I then built a pipeline for training and comparing very different models on the same datasets. Most of the work was in preprocessing and dataset construction, not the model.

## Two-photon imaging pipeline and `datapal`

**Where:** Baylor College of Medicine, 2023–2026  
**Methods:** Python, DataJoint, FastAPI, Panel, Kubernetes

I was one of two primary maintainers of the lab's shared pipeline for two-photon imaging, covering segmentation, motion correction, autoprocessing and job orchestration. I wrote a DataJoint schema implementing an event algebra that automated the path from a submitted scan to a peri-stimulus time histogram, and built `datapal`, a web application for exploring the lab database. The pipeline supported published work on cortical acetylcholine dynamics ([Neyhart et al. 2024](https://doi.org/10.1016/j.celrep.2024.114808)) and voltage imaging ([Land et al. 2026](https://doi.org/10.1038/s41592-026-03043-8)).

## Group refactorization of sleep EEG

**Where:** Brigham and Women's Hospital / Harvard Medical School, 2020–2021  
**Methods:** Nonnegative matrix factorization, R, Luna

Sleep EEG datasets from large consortia run to more than a terabyte. I developed a deterministic NMF procedure, including a variant with improved convergence, for phenotyping sleep across these datasets; it has been used in consortium analyses ([preprint](https://doi.org/10.1101/2020.12.29.424768)).

## Beta events and tactile perception

**Where:** Brown University, 2015–2018  
**Methods:** NEURON biophysical modeling, human MEG, permutation statistics

Transient bursts of beta-frequency activity in somatosensory cortex predict whether a faint touch will be perceived. I extended a biophysical model of thalamocortical circuits to show how these events can affect perception, with inhibitory currents distorting dendritic spikes along the pyramidal neuron. The work appeared in *Cerebral Cortex* ([Law et al. 2022](https://doi.org/10.1093/cercor/bhab221)), with related results in *eLife* and *PNAS*.

## Bioelectric memory

**Where:** Levin Lab, Tufts University, 2014–2015  
**Methods:** Dynamical systems, conductance-based models

Using models of non-neural cell membranes, I showed how bistability in ion channel dynamics lets cells hold resting-potential states that act as "bioelectric memories" during development ([Law and Levin 2015](https://doi.org/10.1186/s12976-015-0019-9)).
