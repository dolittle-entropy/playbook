# Dolittle Playbook Contributions
Welcome to our Engineering Playbook which is a collection of our practices and experiences 
collectively gathered into a form. 

This playbook is meant as a guide for customer engagements, and serves as a checklist for
interacting in our projects. 

## How do I contribute?

### Set up Jekyll 
You can edit the markdown pages directly, but to get the full effect of how the pages will look on `GitHub Pages` you should have a local 
instance of `Jekyll` installed and running. 

#### Windows Environment
- Make sure you're on at least `Windows 10 v1909`
- Have Windows Subsystem for Linux installed (v1 is fine)
- Installed Ubuntu 18.04 LTS (you can find that in the store)

#### Jekyll
home> It is **very important** that you install `version 3.8.5` of Jekyll. 
Newer versions will not work in GitHub Pages!

First, update your ubuntu installation with the latest patches/packages: 
```bash
sudo apt update && sudo apt upgrade -y
```

Next, we install some dependencies:
```bash
sudo apt-get install -y ruby-full build-essential zlib1g-dev
```

Once these are installed, the next step is to set up environment variables to your `~/.bashrc` file: 

```bash
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

The next step is to install `Bundler`:
```bash
gem install bundler
```
**Finally** we can install Jekyll. Remember to specify the version! 
```bash
gem install jekyll --version 3.8.5
```

----
You are now ready to begin working. Jump in to the `Playbook`  folder
and type
```bash
bundler exec jekyll serve
```

And now you're all done, you can open the folder in your editor of choice and have updates to the documents applied as you save. Remember
to refresh the browser to have a peek! 

The documentation can be browsed at

[http://127.0.0.1:4000/docs/](http://127.0.0.1:4000/docs/)



