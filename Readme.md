# A repository for Artificial Intelligance (AI)   

![banner](./assets/banner.png)  
A series of programs implemented in `prolog`  

## Practical List    
Click here to see the [practical list](Prolog-Programming/src/practicals/LIST%20OF%20PRACTICALS%20SEM%20VI.pdf)    

---

### To run Prolog commend line:  
  
#### (A) Without 'docker-compose.yml'  
__While using very first time:__ 

> 1. Navigate to the *Prolog-Programming* directory.   
> 2. Run the following command -  
> ```  
> docker build . -t prolog  
> ```  
> This command builds an image using the Dockerfile i.e. already present in this directory.  
> Here **-t** tags the image i.e. gives an *alternative name to the image* that is being build. It helps it identify the image easily rather than using its id.  

__Use the following command to run the prolog on command line:__ <br />
> **Once the image is created, we are good to go ahead to run it, whenever needed.** <br />
> ```
> docker run -it --rm prolog
> ```
>  <br />
> Here
>     **-it** stands for *interactive terminal* <br />
>     **--rm** Automatically remove the container when it exits i.e. stops <br />
>

_As: Use comend line to run desired commands._ <br />
_Put all the prolog files (**.pl**) file in **src** directory._ <br />

<hr />

#### (B) Using 'docker-compose.yml'
__While using very first time:__    
> 1. Navigate to the *Prolog-Programming* directory.  
> 2. Run the following command -  
> ```  
> docker-compose build --no-rm prolog  
> ```  
> This command builds an image using the Dockerfile i.e. already present in this directory.   
> Here **--no-rm** used not to remove the intermediate containers that are also build during creating this image named *prolog-programming_prolog*   
>    

__Use the following command to run the prolog on command line:__ <br />
> **Once the image is created, we are good to go ahead to run it, whenever needed.** <br />
> ```
> docker run -it --rm prolog-programming_prolog
> ```
> Here  
> **-it** stands for *interactive terminal* <br />
> **--rm** Automatically remove the container when it exits i.e. stops <br />
>

---  

[_visit here_](Prolog-Programming) _for a quick walkthrough with ```prolog```_
