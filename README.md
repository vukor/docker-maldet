docker-maldet
===========

This is docker project for check files on malware files using maldet.


How it's work
===========

1. Pull image:

    `` docker pull vukor/docker-maldet ``

2. Go to directory with your web files

3. Check your files:

    `` docker run -v `pwd`:/htdocs -ti --rm vukor/docker-maldet maldet -a /htdocs ``


Useful links
============
  - https://www.rfxn.com/projects/linux-malware-detect/ 

