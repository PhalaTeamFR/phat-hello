FROM mcr.microsoft.com/devcontainers/rust:0-1-bullseye
COPY install_binaryen.sh /root/install_binaryen.sh
RUN chmod u+x /root/install_binaryen.sh
RUN /root/install_binaryen.sh
RUN rustup install nightly \
    && rustup component add rust-src --toolchain nightly \
    && cargo install cargo-dylint dylint-link \
    && cargo install cargo-contract --force