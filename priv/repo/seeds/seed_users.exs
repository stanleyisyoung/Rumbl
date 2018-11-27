alias Rumbl.Repo
alias Rumbl.Accounts.User

# use ! so it'll fail if it dies and we dont get
# weird data persistance issues
Repo.insert! (%User{
  name: "seed1",
  username: "un_seed1"
})

Repo.insert! (%User{
  name: "seed22",
  username: "un_seed22"
})

Repo.insert! (%User{
  name: "seed333",
  username: "un_seed333"
})