#!/bin/bash -l

# This is case used for explanation for the menu in script

shares="/mnt/hgfs/shares/"

if [ -d "${shares}" ]
then
    \cp ~/.vimrc ${shares}
    \cp ~/.bashrc ${shares}
    \cp -rf ~/.vim ${shares}
fi

\cp ~/.vimrc ./
\cp ~/.bashrc ./
\cp -rf ~/.vim ./


# just try
