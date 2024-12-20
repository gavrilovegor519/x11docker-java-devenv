FROM x11docker/xfce
RUN apt update && apt dist-upgrade -y
RUN apt install wget gpg -y
RUN wget -P /tmp https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && apt install -y /tmp/google-chrome-stable_current_amd64.deb && rm /tmp/google-chrome-stable_current_amd64.deb
RUN apt install openjdk-17-jdk -y
RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg && echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | tee /etc/apt/sources.list.d/vscode.list > /dev/null && rm -f packages.microsoft.gpg
RUN apt update && apt install code