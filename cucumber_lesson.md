Features have already been written to start you on your way to building an app that looks like this:  http://wiki.devchix.com/images/4/4c/Ui.jpg

The idea is that it is an app where people can make suggestions of topics they want to learn and then people can vote on them

    rails suggestorama
    cd suggestorama
    ruby script/generate cucumber
    rm -rf features
    git clone http://github.com/ultrasaurus/workshop-features.git features
    rm -rf features/.git
    cd config
    echo "default: --format pretty" > cucumber.yml
    cd ..
    rake db:migrate

Full step by step instructions are here:  http://wiki.devchix.com/index.php?title=Rails_Curriculum


