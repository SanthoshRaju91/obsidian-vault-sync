      

Git merge strategy.

  

For Developers

  

1.  Creating a repository within the organisation.
2.  The repository will have a main branch called master.
3.  Each developer will create branch of master branch, the naming convention for creating a branch are

1.  “feature/<feature-name>“ for developing a new feature for the product.
2.  “bugfix/<bugfix-name-jira-id>” / “bugfix/<bugfix-name>” for pushing bug fixes.

5.  The commits within the branch will be atomic, meaning each commit will serve one purpose and just one purpose only.
6.  Each commit should have a clearly defined commit message. The commit message should reflect your code in the commit. If the commit message is different from what is being committed, will not make sense(Obvious right ?).
7.  There should not be duplicate commits, if the changes can be done within one commit. For eg, a commit containing the full code for Button component and later realising you forgot to add a prop to the Button component, you adding it in the next commit is not reasonable. Because it can be changed in the original commit containing the full code for Button component. (Use rebase in this case)
8.  Before raising pull request / merge request, below checklist should be followed.

1.  Lints passed. (Will be taken care by the pre commit hook)
2.  Formatting corrected. (Will be taken care by the pre commit hook)
3.  Tests passed. (The pre-commit hook will fail, if the tests fail not allowing you to commit)
4.  Most important the PR / MR should have proper commit history

  

For Reviewers

  

1.  Every reviewers should review the code on each commit only, not on the over all changes made.
2.  Comments should be given for each commit. In this case, the developer can easily recognise on which commit he needs to change and resolve the comment, instead of creating a new commit to fix the review comments. Submit for request changes in the review changes dropdown in Github, once your review is done.
3.  Every PR / MR should go via two reviews.
4.  The reviewers will also check on accessibility standards and test standards. (If there is a way to integrate the accessibility checking in the pre-commit hook, like tests would be great. Less burden on the reviewers and is accelerated to merged quicker)
5.  Once review is done by each reviewer, they will approve the same in GitHub in the review changes dropdown.
6.  The PR / MR can be merged to the master, if the required number of approval is received by anyone.

  

For Release

  

1.  For each sprint, we will create a tag from the master branch using Semantic Versioning ([https://semver.org/](https://semver.org/)). 

1.  Deploy this tag to staging environment.
2.  Or we write a CI / CD script which builds a docker image for each tag creation, tag the docker build and push it to docker registry. We then deploy or share this docker tag for code deploy.