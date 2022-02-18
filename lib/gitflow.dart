/**
 * What I understood about git flow
 * Two big branches to start with
 * master -> for real app on real server
 * develop -> everything is ongoing here. main branch for features.
 *
 *
 * feature/name -> each function for the app will be developed on this branch.
 * release/  -> when one feature is done, it will be created or updated on temp or test server. test, fixing bugs before release will go on here.
 *
 * When test is done and all the bugs are fixed. It will be merged to both master and develop. And it will be released with version Tag.
 *
 * After release, if there is critical bug on App. Create hotfix branch and work on it. After fixing it, make sure the code are merged to both master and develop branch.
 *
 *
 ** What I did to use git flow
 *
 * 1. I did installed git-flow with brew install git-flow on Terminal
 * 2. create master, develop branch and push all files on them.
 * 3. remove local and remote branch named main or feature/encapsulation.
 *
 * 4. create feature/login and feature/userinformation for an example with "git flow feature start login"
 * 5. push on remote repo with git push origin --all
 *
 *
 * 6. After pushing files on feature/login, did Pull Request
 * 7. When it is approved, it can be merged (these two lines will be pushed on develop branch)
 *
 *
 *
 */