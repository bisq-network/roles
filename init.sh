# Create repository
git init
hub create bisq-network/roles -d"Roles played by bisq network contributors"

# Set up integrations
echo "Set up Slack integration and press enter when complete"
read

# Initialize repository
git commit -m"Initialize repository" --allow-empty
git push -u origin master

git add init.sh                  # this file
git commit -m"Add init.sh"

echo '*.swp' > .gitignore
git add .gitignore
git commit -m"Ignore Vim swap files"

echo '# bisq network roles' > README.md
git add README.md
git commit -m"Add placeholder README"

# Delete default labels
ghi label --list | xargs -Ilname echo ghi label -D lname

# Create role labels
ghi label -c 0f86c3 role:comms   # communication
ghi label -c 0f86c3 role:dev     # development
ghi label -c 0f86c3 role:doc     # documentation
ghi label -c 0f86c3 role:econ    # economics
ghi label -c 0f86c3 role:lead    # leadership
ghi label -c 0f86c3 role:op      # operations

# Create role issues
ghi open -Lrole:lead -m'Founder'
ghi open -Lrole:lead -m'Director of decentralization'

ghi open -Lrole:dev -m'exchange maintainer'
ghi open -Lrole:dev -m'DAO maintainer'
ghi open -Lrole:dev -m'pricenode maintainer'
ghi open -Lrole:dev -m'seednode maintainer'
ghi open -Lrole:dev -m'statsnode maintainer'
ghi open -Lrole:dev -m'bitcoinj maintainer'

ghi open -Lrole:dev,role:op -m'exchange statistics website/API operator and maintainer'
ghi open -Lrole:dev,role:op -m'network monitor operator and maintainer'
ghi open -Lrole:dev,role:op -m'BSQ explorer operator and maintainer'
ghi open -Lrole:dev,role:op -m'website operator and maintainer'

ghi open -Lrole:op -m'exchange arbitrator'
ghi open -Lrole:op -m'pricenode operator'
ghi open -Lrole:op -m'seednode operator'
ghi open -Lrole:op -m'GitHub organization operator'
ghi open -Lrole:op -m'Travis CI operator'
ghi open -Lrole:op -m'DNS operator'
ghi open -Lrole:op -m'Discourse forum operator'
ghi open -Lrole:op -m'Transifex operator'
ghi open -Lrole:op -m'Twitter operator'
ghi open -Lrole:op -m'Freenode IRC operator'
ghi open -Lrole:op -m'Slack team operator'
ghi open -Lrole:op -m'Telegram operator'
ghi open -Lrole:op -m'Reddit operator'
ghi open -Lrole:op -m'mailing list operator'
ghi open -Lrole:op -m'newsletter operator'

ghi open -Lrole:doc -m'roles maintainer'
ghi open -Lrole:doc -m'docs maintainer'
ghi open -Lrole:doc -m'proposals maintainer'
ghi open -Lrole:doc -m'comp maintainer'

ghi open -Lrole:econ -m'Economic advisor'
ghi open -Lrole:econ -m'Bookkeeper'

ghi open -Lrole:comms -m'Writer/Editor'
ghi open -Lrole:comms -m'Ambassador'
