#!/bin/sh

echo "Mac Setup Wizard"
echo "----------------"

# Get user data
echo "Enter your full name (For git config):"
read name
echo "Enter your email (For git and private key config):"
read email

# Generate SSH key pair
read -p "Would you like to create a new SSH key pair? [Yy]: " -n 1 -r
echo #newline
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Generating a new RSA key pair"
    #ssh-keygen -t rsa -b 4096 -C "$email"
    echo "Please add the public key to your GitHub account"
    read -p "Press any key to continue"
fi

# Install command line tools
echo "Installing command line tools"
xcode-select --install


# Install Homebrew
echo "Installing Homebrew"
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating Homebrew"
brew update


# Git Config
echo "Configuring git"
brew install git
git config --global user.name "$name"
git config --global user.email "$email"

# Install Brew formulae from Brewfile
echo "Installing brew formaulae and casks"
brew bundle install


