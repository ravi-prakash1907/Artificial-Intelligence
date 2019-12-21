# A repository for Artificial Intelligance (AI) 
## B.Sc. (Hons.) Computer Science

### To run Prologue commend line:
__While using very first time:__
>
> 1. Navigate to the *AI* directory.
> 2. Run the following command -
> ```
> docker build . -t prologue
> ```
> This command builds an image using the Dockerfile i.e. already present in this directory.
> Here **-t** tags the image i.e. gives an *alternative name to the image* that is being build. It helps it identify the image easily rather than using its id.
> 
__Use the following command to run the prologue on command line:__
> **Once the image is created, we are good to go ahead to run it, whenever needed.**
> ```
> docker run -it --rm prologue
> ```
> 
> Here
>     **-it** stands for *interactive terminal*
>     **--rm** Automatically remove the container when it exits i.e. stops
>

_As: Use comend line to run desired commands._
_Put all the prologue files (**.pl**) file in **src* directory._