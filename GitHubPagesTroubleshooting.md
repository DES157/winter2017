GitHub Pages: Troubleshooting
============================


##### Why is my img or other resource not showing up?

Case sensitivity varies by html construct, html version, and web server particulars, the `href` attribute is case sensitive. The best practice is to name all of your files in lower case (including file extensions).

##### Wrong branch

GitHub Pages hosts the `gh-pages` branch of project repositories as a web site. Verify that you are making working on that branch (do `git branch` you should see `gh-pages` and there should be a `*` by it). If not, change to it by `git checkout gh-pages`. You may also want to remove your master branch to avoid confusion (`git branch -d master`).

##### Javascript security

Security settings can prevent secure websites (`https://...`) from loading insecure content (i.e. reference `http://...` sites in their html). This can lead to apparent bugs such as scripts not loading as expected. Fix this by either loading your page as `https` instead of `https`, or make sure that in your html file you load all scripts as `https`.

##### How

