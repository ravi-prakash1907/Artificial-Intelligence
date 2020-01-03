# A repository for Artificial Intelligance (AI) 
## B.Sc. (Hons.) Computer Science

### To run Prolog commend line:

#### (A) Without 'docker-compose.yml'
__While using very first time:__
>
> 1. Navigate to the *AI* directory.
> 2. Run the following command -
> ```
> docker build . -t prolog
> ```
> This command builds an image using the Dockerfile i.e. already present in this directory.
> Here **-t** tags the image i.e. gives an *alternative name to the image* that is being build. It helps it identify the image easily rather than using its id.
> 
__Use the following command to run the prolog on command line:__
> **Once the image is created, we are good to go ahead to run it, whenever needed.**
> ```
> docker run -it --rm prolog
> ```
> 
> Here
>     **-it** stands for *interactive terminal*
>     **--rm** Automatically remove the container when it exits i.e. stops
>

_As: Use comend line to run desired commands._
_Put all the prolog files (**.pl**) file in **src** directory._

<hr />

#### (B) Using 'docker-compose.yml'
__While using very first time:__
>
> 1. Navigate to the *AI* directory.
> 2. Run the following command -
> ```
> docker-compose build --no-rm prolog
> ```
> This command builds an image using the Dockerfile i.e. already present in this directory.
> Here **--no-rm** used not to remove the intermediate containers that are also build during creating this image named *ai_prolog*
> 
__Use the following command to run the prolog on command line:__
> **Once the image is created, we are good to go ahead to run it, whenever needed.**
> ```
> docker run -it --rm ai_prolog
> ```
> 
> Here
>     **-it** stands for *interactive terminal*
>     **--rm** Automatically remove the container when it exits i.e. stops
>