# mixeditems

A new Flutter project to implement features below :
 - [lists with different types of items](https://docs.flutter.dev/cookbook/lists/mixed-list)
 - [provider](https://docs.flutter.dev/development/data-and-backend/state-mgmt/simple)
 - [master-detail flow](https://medium.com/flutter-community/developing-for-multiple-screen-sizes-and-orientations-in-flutter-fragments-in-flutter-a4c51b849434)
 - [responsive and adaptive UI](https://aloisdeniel.com/#/posts/adaptative-ui) 

## Getting Started

This project is based on a Flutter project sample:

- [Cookbook: Create lists with different types of items](https://docs.flutter.dev/cookbook/lists/mixed-list)

For help getting started with Flutter, view their
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


### Tips
- [gitflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

What I understood about git flow
Two big branches to start with
- master -> for real app on real server
- develop -> everything is ongoing here. main branch for features.

- feature/name -> each function for the app will be developed on this branch.
- release/  -> when features are done, it will be created or updated on temp or test server. test, fixing bugs before release will go on here. 
- master -> When test is done and all the bugs are fixed. It will be merged to both master and develop. And it will be released with version Tag.

- hotfix/ -> After release, if there is critical bug on App. Create hotfix branch and work on it. After fixing it, make sure the code are merged to both master and develop branch.

What I did to apply git flow

1. I did installed git-flow with brew install git-flow on Terminal > Uninstalled you can do it without installing git-flow.
 2. create master, develop branch and push all files on them.

 3. create feature/login and feature/userinformation for an example with "git flow feature start login" > Without git-flow, push the new branch on remote.
 4. push on remote repo with git push origin --all

 6. After working on it, add, commit and push files on feature/login, did pull Request.
 7. When it is approved, it can be merged to develop.
 8. If it is approved to be released, it can be merged to master. 
    
 Simply, git flow is feature > develop > master


