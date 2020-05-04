case $facts['cloud'] {
'aws': {
notice('This is an AWS cloud node ')
}
'gcp': {
notice('This is a Google cloud node')
}
default: {
notice("I'm not sure which cloud I'm in!")
}
}
