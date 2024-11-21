FROM fedora:40
USER 0

# Install the patched mesa-krunkit drivers
RUN dnf -y install \
    dnf-plugins-core \
    dnf -y copr enable slp/mesa-krunkit && \
    dnf -y install mesa-vulkan-drivers vulkan-loader-devel vulkan-headers vulkan-tools vulkan-loader && \
    dnf clean all
