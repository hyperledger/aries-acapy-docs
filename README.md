# Aries ACA-Py Docs

**Go to [https://aca-py.org] to access the documentation for recent [Aries Cloud Agent Python] releases.**
**Go to [https://history.aca-py.org] to access Aries Cloud Agent Python documentation up through version 0.11.x.**

This repository is used to publish documentation for historical (pre-0.12.x)
releases of [Aries Cloud Agent Python] documentation to the site
[https://history.aca-py.org]. The documentation in this site is **NOT**
maintained here. Rather, the documents for these past ACA-Py releases are
extracted from the ACA-Py repository via a script and then saved to a branch in
this repository. Each version branch in this repository is published as a
version of the documentation on the public site. The "main" branch of this site
points to the latest historical release -- the most recent 0.11.x release.

[Aries Cloud Agent Python]: https://github.com/hyperledger/aries-cloudagent-python
[https://aca-py.org]: https://aca-py.org
[https://history.aca-py.org]: https://history.aca-py.org

Details of how to add releases and update main are described in this document.

The documentation site is published following the Hyperledger Foundation best
practices using MkDocs (documentation at [mkdocs.org](https://www.mkdocs.org/))
and the theme Material for MkDocs (documentation at [Material for MkDocs]).

In general, only the ACA-Py Maintainers should update this site. Those wanting
to contribute to the docs themselves should do so in the [Aries Cloud Agent
Python] repository.

[Material for MkDocs]: https://squidfunk.github.io/mkdocs-material/
[Mike]: https://github.com/jimporter/mike

## Prerequisites

To test the documents and update the published site, the following tools are needed:

- A Bash shell
- Python 3 or a Docker environment
- git
- The [Material for Mkdocs] theme.
- The [Mike] MkDocs plugin for publishing versions to gh-pages.
  - Not used locally, but referenced in the `mkdocs.yml` file and needed for
    deploying the site to gh-pages.

We assume that anyone using this will have a least up to `git` installed locally already.

The Mkdocs-related items can be installed locally, as described in the [Material
for Mkdocs] installation instructions. The short, case-specific version of those
instructions follow:

```bash
pip install -r requirements.txt
```

Alternatively, you can use Docker as described in the [Material for Mkdocs]
installation instructions. You can use the Dockerfile here to build a local
container:

```bash
# Create a local container image with the necessary requirements
docker build -t squidfunk/mkdocs-material .
```

The following command run `mkdocs` when needed:

```bash
docker run --rm -it -p 4444:8000 --name mkdocs-material -v ${PWD}:/docs squidfunk/mkdocs-material
```

Replace the `4444` with the port you want to use.  It may be useful to create an alias for running
the docker container so that you can run `mkdocs` commands such as:

```bash
alias mkdocs='docker run --rm -it -p 4444:8000 --name mkdocs-material -v ${PWD}:/docs squidfunk/mkdocs-material'
```

The steps below assume you setup an alias like that.

### Verify Setup

To verify your setup, check that you can run `mkdocs` by running the command `mkdocs --help` to see the help text.

### Useful MkDocs Commands

The commands you will usually use with `mkdocs` are:

- `mkdocs build` -- build the to-be-published site using the `mkdocs.yml` configuration and the docs files in the `\docs` folder.
- `mkdocs` -- build the docs, and run a server that will deploy the site to your
  localhost, on the port you specified (e.g.,
  [http://localhost:4444](http://localhost:4444)).

## Overview: Release Documentation Generator

The steps to generate the documents for a given release are quite complex
(overly complex -- help to make them easier are welcome), so the following steps
through the process the basic process of preparing any individual releaese.
Additional checklists are then given for the least complicated, process of
updating the "main" version the docs, through to adding a new release, and
updating an existing release.

The actual generation of any particular release involves running in the local
clone of your fork the bash script `./build-docs.sh` in the root folder. The
script takes on an argument pair (`-t <tag>`) to specify the ACA-Py tag to be
used in generating docs for a particular tag. As you will see, each tag is
generated into a different branch in this repository that corresponds to the
ACA-Py release tag so you need to first be on the right branch in your local
clone, and specify the corresponding ACA-Py tag.

The steps performed by the build-docs.sh script are:

- Clone ACA-Py at the given `<tag>` (arg `-t <tag>`) into the `/tmp` folder of this repository.
- Execute the `./scripts/copyFixMDs.sh` script.

The `./scripts/copyFixMDs.sh` script, which will be unique for each version of
ACA-Py (hence the branches in this repo per ACA-Py tag) does the following:

- Deletes the current contents of the `/docs` folder in the repository.
- Removes from the `mkdocs.yml` file the `nav:` section of the file.
- Adds in a new `nav:` section in the `mkdocs.yml` that is inline in the script.
- Executes a series of either `cp` commands or `sed` pipelines to extract a
  documentation file from the `/tmp` clone of ACA-Py into the `/docs` folder of
  this repo.

Ideally, that happens without errors, but if there are errors, fix them up,
usually by patching the document from `/tmp` via a sed pipeline as it is
duplicated in `/docs`. See the [guidance below on fixing
errors](#fixing-errors).

Once the errors are cleaned up, a check should be run to see if any new Markdown
files have been added to ACA-Py in the release. Do that by running the script
`./scripts/diffMDs.sh`. There are instructions in the output about what to
expect to see. If more MD files are listed, add them to both the "Navigation"
section of the `./scripts/copyFixMDs.sh` script to be listed in an appropriate
section of the generated website, and add a `cp` or `sed` command to generate
the new document into the documentation.

Next, publish the a local instance of the site and test it. To do so, simply run
`mkdocs` from the root of the repository. If all goes well, the current set of
docs will be published and you will be able to see the documents in your
browser. Look for an errors in the site generation process, particularly missing
links.

When all is done, create a PR that merges any updated files into the appropriate
branch of this repo. If it is main, merge into the main branch, if not, make sure
you change the default target for the pull request merge to be the appropriate branch.

### Fixing Errors

If there are errors in the building or deploying of the site, make fixes to the
`<version>.sh` (and rerun it). A good flow is to run:

`./build-docs.sh -k; mkdocs`

Fix an error, Ctrl-C to stop the current serving of the pages and rerun the command.
There are live updates on the site as you make changes to the pages, but changes
to `mkdocs.yml` are not picked up live, and you must restart the server to see those.

Remember as well, that fixing the copy of the docs is **NOT** sufficient--you need
to make the changes during the copy process from `/tmp` to `/docs` in the `./scripts/copyFixMDs.sh`
file, as we will need to run the process over if we change anything fundamental about the
site (e.g. the colors, logos, etc.). The content **MUST** remain faithful to the content
in the ACA-Py repository at the time the version was tagged, but the documentation site
may evolve, requiring building the "per version" content again from time to time.

#### Adding and Fixing Content

The basic process for adding content to the site (e.g. a new Markdown file from ACA-Py) is:

- Update the version-specific `nav:` in the `./scripts/copyFixMDs.sh` file.
- In the `./scripts/copyFixMDs.sh` script, add a command to copy the file from
  the `/tmp` folder to the appropriate place in the `/docs` folder.
- If necessary, convert the copy (`cp`) to a `sed` command to update a part of the content
necessary. Mostly, such changes are required for relative links to the correct other place in the
folder.  The `./scripts/copyFixMDs.sh` file has a number of examples of `sed` conversions:
  - Documents formerly in the same folder now in another one.
  - Documents copied from one location (e.g., `GettingStarted...`) into another (e.g., `features`).
  - Images in other locations.
  - Relative links to code files to absolute links in the ACA-Py repository.
  - Fixing multiple things via a pipeline of `sed` commands.

## Checklists for Generating Release Documentation

The following are checklists for different generation scenarios:

### Updating Main

To update the documentation for ACA-Py `main` branch:

- Checkout the `main` branch of this repo in your local clone.
- Update your local clone.
- Run `./build-docs.sh -t main`
- Complete a test/fix cycle until you are ready to publish.
- Create a pull request to the `main` branch of this repo.
- When the PR is merged, the published site will be automatically updated.

### Adding a New Release

To add a new release of ACA-Py:

- If the release was produced by tagging the ACA-Py `main` branch, follow the steps above to update the `main` branch of this repo.
- In GitHub in this repository, create the branch for the new release named for the ACA-Py tag, such as `0.11.0` at the current `main`.
  - If this is an ACA-Py patch, create the branch in this repo based on the ACA-Py `<tag>` branch (e.g., `0.10.4` from `0.10.3`).
- Update your local clone to get the new branch.
- Execute in your local clone `git switch <tag>` to checkout the new branch.
- Run `./build-docs.sh -t <tag>`
- Add a file `overrides/main.html` to indicate this is the latest ACA-Py release as described in `overrides/README.doc`
- Complete a test/fix cycle until you are ready to publish.
- Create a pull request to the `<tag>` branch of this repo that will be merged into the `<tag>` branch, **NOT** into `main`.
- Create a new release with the following parameters:
  - Tag `v<tag>` to be created when published
  - From `<tag>` branch (**NOT** `main`)
  - Description: `Documentation for Release <tag> of Aries Cloud Agent Python.`
  - Check `Latest Release`
- When the new release is published, the new documentation for the ACA-Py release will be published.
- Follow the steps to [update a release](#updating-an-existing-release) (below)
for the previously current ACA-Py release, to update it's `overrides/main.html`
file, as per the guidance in the `overrides/README.doc` -- change the
text in the file from indicating its the current release to an older release.
  - `overrides/main.html` contains the banner text for the publication.
  - Yes, this step is a pain and kind of stupid. If I had time to do it better I
    would.

### Updating an Existing Release

To update the documentation in this repo for an existing release of ACA-Py:

- Update your local clone to get the latest from this repo.
- If the branch already exists in your local repo, use `git switch <tag>` to checkout the existing branch.
  - If not, the following will get you a local branch: `git checkout remotes/upstream/<tag> ; git switch -c <tag>`
- Run `./build-docs.sh -t <tag>`
- If needed, update the file `overrides/main.html` to indicate this is not the latest ACA-Py release, per the instructions in `overrides/README.doc`
- Complete a test/fix cycle until you are ready to publish.
- Create a pull request to the `<tag>` branch of this repo that will be merged into the `<tag>` branch, **NOT** into `main`.
- Delete the existing release (`v<tag>`), and tag (`v<tag>`) so that the documentation will be republished in the repo.
  - Creating a new release is the only way (AFAIK) to trigger re-publishing a version other than main.
- Create a new release with the following parameters:
  - Tag `v<tag>` to be created when published
  - From `<tag>` branch (**NOT** `main`)
  - Description: `Documentation for Release <tag> of Aries Cloud Agent Python.`
  - Check `Latest Release`
- When the new release is published, the new documentation for the ACA-Py release will be published.

As you see mistakes in this documentation, please make updates or create suggestion issues. We really 
need some GitHub Actions to automate this stuff!

### Removing Published Releases

From time to time it is necessary to remove published branches, such as when a final release is completed and you want to 
get rid of the Release Candidate (rc) releases that preceded the release. Here are the steps to do that.

- Checkout the `gh-pages` branch and use git to update it with a `pull`.
- Checkout the `main` branch of the repo, and update it with a `pull`.
- Run the command `mike` to delete the branch(es) that you want removed from the public site.
  - `mike delete -m "Signed-off-by: Stephen Curran <swcurran@gmail.com>" -p v0.12.1rc1 v0.12.0rc0 v0.12.0rc2 v0.12.0rc3`
  - Note that the "-m" is the DCO sign-off that is required for all Hyperledger projects. Update the information for what you use for your commits with DCO.
  - The `mike` command creates a commit on the (by default) `gh-pages` branch, in this case, deleting the unwanted versions of the docs.
  - The `-p` instructs `mike` to push the update to the `gh-pages` branch.
_ Checkout the `gh-pages` branch. You should see that your branch is now one commit ahead of the remote (Hyperledger) branch.
- Push the branch so that you can create a Pull Request. 
- Create a pull request targeting the remote (Hyperledger repository) `gh-pages` branch.
  - For example, if you use GitHub's `gh` command line utility, the command is `gh pr create -t remove-rc-docs --base gh-pages`
  - Note the use of `--base gh-pages` to target the pull request to the gh-pages branch.
- Review and get the pull request approved and merge it.
- Update your gh-pages branch.
- Use git to checkout the `main` branch.

Done!
