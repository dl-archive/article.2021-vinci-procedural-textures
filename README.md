# Visualization of Data Changes in 2.5D Treemaps using Procedural Textures and Animated Transitions

[Daniel Limberger](https://orcid.org/0000-0002-9111-4809), [Willy Scheibel](https://orcid.org/0000-0002-7885-9857), Jan van Dieken, and [Jürgen Döllner](https://orcid.org/0000-0002-8981-8583)

*Proceedings of the 14th International Symposium on Visual Information Communication and Interaction (VINCI '21)*, September 6–8, 2021, Potsdam, Germany. ACM, pp. 21:1–5.

DOI: [10.1145/3481549.3481570](https://doi.org/10.1145/3481549.3481570) · Author's version: [Zenodo](https://doi.org/10.5281/zenodo.24056029) · [ResearchGate](https://www.researchgate.net/publication/354331984)

> This work investigates the extent to which animated procedural texture patterns can be used to support the representation of changes in 2.5D treemaps.
> Changes in height, color, and area of individual nodes can easily be visualized using animated transitions.
> Especially for changes in the color attribute, plain animated transitions are not able to directly communicate the direction of change itself.
> We show how procedural texture patterns can be superimposed to the color mapping and support transitions.
> To this end, we discuss qualitative properties of each pattern, demonstrate their ability to communicate change direction both with and without animation, and conclude which of the patterns are more likely to increase effectiveness and correctness of the change mapping in 2.5D treemaps.

<p><a href="limberger2021-procedural-as-submitted.pdf"><img src="preview/page-1.webp" width="24%" alt="page 1"/></a> <a href="limberger2021-procedural-as-submitted.pdf"><img src="preview/page-2.webp" width="24%" alt="page 2"/></a> <a href="limberger2021-procedural-as-submitted.pdf"><img src="preview/page-3.webp" width="24%" alt="page 3"/></a> <a href="limberger2021-procedural-as-submitted.pdf"><img src="preview/page-4.webp" width="24%" alt="page 4"/></a> <a href="limberger2021-procedural-as-submitted.pdf"><img src="preview/page-5.webp" width="24%" alt="page 5"/></a></p>

## Contents

| path | |
|------|-|
| `src/` | LaTeX sources of the camera-ready version (ACM `acmart`, sigconf), as submitted to ACM |
| `limberger2021-procedural-as-submitted.pdf` | camera-ready PDF as submitted |
| `preview/` | page previews for this README |
| `build.sh` | reproducible build using TeX Live 2021 (podman/docker) |

## Build

```bash
./build.sh        # → build/article.vinci-procedural-textures.pdf
```

The bundled `acmart.cls` (2021) is not compatible with current TeX Live releases (`hyperxmp` load-order error), hence the TeX Live 2021 container.
The build reproduces `limberger2021-procedural-as-submitted.pdf` (identical text and layout; figure captions differ marginally in glyph rendering).

## Versions

| tag | |
|-----|-|
| `v1.0-camera-ready` | sources as submitted to ACM (2021-09-16) |

## Citation

```bibtex
@InProceedings{limberger2021-procedural,
  author    = {Limberger, Daniel and Scheibel, Willy and van Dieken, Jan and D{\"o}llner, J{\"u}rgen},
  title     = {Visualization of Data Changes in 2.5D Treemaps using Procedural Textures and Animated Transitions},
  booktitle = {Proceedings of the 14th International Symposium on Visual Information Communication and Interaction},
  year      = {2021},
  series    = {VINCI~'21},
  publisher = {ACM},
  pages     = {21:1--5},
  doi       = {10.1145/3481549.3481570},
  isbn      = {978-1-450386-47-0},
}
```
