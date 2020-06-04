# gf-binder
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/GrammaticalFramework/gf-binder/master)

## Playing with GF notebooks
Just press the icon above! Note that your changes or any new notebooks you create *will not be persistent*. That is, if you close your tab and go back later, all changes will be lost!

## Making your own shared notebooks
1. Make a fork of this repo
2. Clone your forked repo to your local machine
3. Install docker if you have not already (https://docs.docker.com/engine/install/)
4. Run the script `./run_locally.sh`
5. Copy and paste the link that the script outputs into your browser (it will be something like: http://127.0.0.1:8888/?token=XXXXXX)
6. Create any notebooks you want to share in the `notebooks/` folder (only stuff created in that folder will be mirrored back to your git repository, all other folders "live" only inside your docker container.)
7. Commit any notebooks you created to the git repository and push to GitHub.
8. Go to https://mybinder.org/ and enter the link to your forked GitHub repository.
9. (Optional) Change this readme and the link on the top logo badge so people can go directly to your notebooks from your GitHub repo.
