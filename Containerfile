FROM fedora:41
USER 0

ADD COPR.repo /etc/yum.repos.d/COPR.repo

# Install the patched mesa-krunkit drivers
RUN dnf -y install \
    dnf-plugins-core && \
    dnf -y install mesa-vulkan-drivers vulkan-loader-devel vulkan-headers vulkan-tools vulkan-loader && \
    dnf clean all
