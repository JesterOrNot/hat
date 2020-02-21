FROM gitpod/workspace-full:latest
USER gitpod
# Install ghc, cabal, stack, summoner, and hlint with brew
RUN brew install \
    ghc \
    cabal-install \
    haskell-stack \
    hlint \
    summoner
# Add /home/gitpod/.local/bin to $PATH for hlint
ENV PATH=/home/gitpod/.local/bin:$PATH
