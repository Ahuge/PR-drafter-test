workflow "Push" {
  on = "push"
  resolves = ["Draft Pull Request"]
}

action "Draft Pull Request" {
  uses = "Ahuge/PR-drafter@ab510dc"
  secrets = ["GITHUB_TOKEN"]
}

