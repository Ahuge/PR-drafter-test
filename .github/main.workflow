workflow "Push" {
  on = "push"
  resolves = ["Draft Pull Request"]
}

action "Draft Pull Request" {
  uses = "Ahuge/PR-drafter@3f6aab5"
  secrets = ["GITHUB_TOKEN"]
}

