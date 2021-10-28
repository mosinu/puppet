node 'basenode' {
#  include baseclass
}
node "aixtest0.gpi.com" inherits basenode
#node /^(cle-[a-zA-Z]+)\d+\.gpi\.com$/ inherits basenode {
}
#node 'cle-cobblertest.gpi.com' inherits basenode {
}
#node /^(dev-[a-zA-Z]+)\d+\.gpi\.com$/ inherits basenode {
}
#node /^(test-[a-zA-Z]+)\d+\.gpi\.com$/ inherits basenode {
}
#node /\.gpi\.com$/ inherits basenode {
}

