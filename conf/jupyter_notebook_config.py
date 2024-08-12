c = get_config()

# Kernel config
c.IPKernelApp.pylab = 'inline'  # if you want plotting support always in your notebook

# Notebook config

c.NotebookApp.allow_origin = '*' # put your public IP Address here
c.NotebookApp.ip = '*'
c.NotebookApp.allow_remote_access = True
c.NotebookApp.open_browser = False
c.NotebookApp.password = u'argon2:$argon2id$v=19$m=10240,t=10,p=8$u//Q8MyDuFWl2MR/ykjQ2Q$1nPQDAwexooNoE1d5+3GqPEYz6oxvM9mnEIgu2hZRmc'
c.NotebookApp.port = 8080
