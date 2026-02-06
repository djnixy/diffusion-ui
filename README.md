# diffusion-ui

This is a web interface frontend for generation of images using
[Stable Diffusion WebUI Forge](https://github.com/lllyasviel/stable-diffusion-webui-forge)
([Stable Diffusion](https://github.com/CompVis/stable-diffusion)).

<p align="center">
  <img src="https://github.com/leszekhanusz/diffusion-ui/blob/main/doc/cute_bunny.gif" />
</p>

<p align="center">
  <img src="https://github.com/leszekhanusz/diffusion-ui/blob/main/doc/forge_fullscreen.png" style="width: 100%"/>
</p>

## Documentation

The documentation is available [here](https://diffusionui.readthedocs.io)

## Technologies

Diffusion UI was made using:

* [Vue 3](https://vuejs.org/) with [Pinia](https://pinia.vuejs.org/)
* [PrimeVue components](https://www.primefaces.org/primevue/)
* [Fabric.js](http://fabricjs.com/)
* [The Pug templating language](https://pugjs.org)
* [Font Awesome icons](https://fontawesome.com/)

## Features

* Text-to-image
* Image-to-Image:
    * from an uploaded image
    * from a drawing made on the interface
* Inpainting
    * Including the possibility to draw inside an inpainting region
* Outpainting (using mouse to scroll out)
* Modification of model parameters in left tab
* Image gallery of previous image in the right tab
* Allow to do variations and inpainting edits to previously generated images

## Tips

* Use the mouse wheel to zoom in or zoom out in a provided image
* Use the shift key to make straight lines for drawing or for making inpainting zones
* Use Control-z to cancel an action in the image editor
* Use the arrow keys (left,right,up and down) to move inside the image gallery.
  The Home key will allow you to go back to the first image of the batch.

## Frontend

The frontend is available at [diffusionui.com](http://diffusionui.com)
(**Note:** You still need to have a local backend to make it work with Stable diffusion)

Or alternatively you can [run it locally](https://diffusionui.readthedocs.io/en/latest/frontend.html).

### Docker

The Docker image is automatically built and pushed to the [GitHub Container Registry (GHCR)](https://github.com/djnixy/diffusion-ui/pkgs/container/diffusion-ui).

#### Pulling the image

```bash
docker pull ghcr.io/djnixy/diffusion-ui:latest
```

#### Running the container

To run the container on port 8080:

```bash
docker run -d -p 8080:80 ghcr.io/djnixy/diffusion-ui:latest
```

#### Using Docker Compose

You can also use the provided `compose.yaml` file:

```bash
docker compose up -d
```

Then open `http://localhost:8080` in your browser.

## Backends

### Stable Diffusion WebUI Forge

#### local backend

To be able to connect diffusion-ui to the Forge backend from your own pc, you need to
run it with the following parameters: `--no-gradio-queue --cors-allow-origins=http://localhost:5173,https://diffusionui.com`.

See the instructions [here](https://diffusionui.readthedocs.io/en/latest/backends/automatic1111.html).

#### online colab backend

If you can't run it locally, it is also possible to use Forge with diffusion-ui online for free with this [Google Colab notebook](https://colab.research.google.com/github/leszekhanusz/diffusion-ui/blob/main/src/backends/colab/forge.ipynb)

## License
[MIT License](https://github.com/leszekhanusz/diffusion-ui/blob/main/LICENSE) for the code here.

[CreativeML Open RAIL-M license](https://huggingface.co/spaces/CompVis/stable-diffusion-license)
for the Stable Diffusion model.
