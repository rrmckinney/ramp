from git import Repo

working_tree_dir = "/Users/rmckinney/ramp"
repo = Repo(working_tree_dir)
repo.git.add(A=True)
repo.git.commit('-m', 'update ramp data')
repo.git.push
