# Install gf tool
go get -u github.com/tomnomnom/gf

# Install waybackurls tool
go get github.com/tomnomnom/waybackurls

# Move the tools to /usr/local/bin
cp /root/go/bin/gf /usr/local/bin
cp /root/go/bin/waybackurls /usr/local/bin

# Clone gf and Gf-Patterns repositories
git clone https://github.com/tomnomnom/gf
git clone https://github.com/1ndianl33t/Gf-Patterns

# Create a hidden directory on the root
mkdir /root/.gf

# Copy patterns to .gf directory
cp -r /root/gf/examples/* /root/.gf
cp -r /root/Gf-Patterns/* /root/.gf

# Run the XSS search command
waybackurls target.com | gf xss
