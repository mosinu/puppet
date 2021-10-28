node 'basenode' {
#  include baseclass
}

node /^(cle-[a-zA-Z]+)\d+\.gpi\.com$/ inherits basenode {
}

node 'cle-cobblertest.gpi.com' inherits basenode {
}

node /^(dev-[a-zA-Z]+)\d+\.gpi\.com$/ inherits basenode {
}

node /^(test-[a-zA-Z]+)\d+\.gpi\.com$/ inherits basenode {
}
