# Aries ACA-Py Docs

This repository is used to publish the [Aries Cloud Agent Python] documentation to
the site [https://acapy.com]. The documentation in this site is **NOT**
maintained here. Rather, the documents for select past and all future ACA-Py
release tag are extracted from the ACA-Py repository via a script and then saved
to a branch in this repository. Each version branch in this repository is published as a
version of the documentation on the public site. The "main" branch of this site
is updated from time-to-time from the ACA-Py and published as the "main" and "latest" version
on the published site.

[Aries Cloud Agent Python]: https://github.com/hyperledger/aries-cloudagent-python

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
- The [Mike] plugin for Mkocs.
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

### Verify Setup

To verify your setup, check that you can run `mkdocs` by running the command `mkdocs --help` to see the help text.

### Useful MkDocs Commands

The commands you will usually use with `mkdocs` are:

- `mkdocs build` -- build the to-be-published site using the `mkdocs.yml` configuration and the docs files in the `\docs` folder.
- `mkdocs` -- build the docs, and run a server that will deploy the site to your
  localhost, on the port you specified (e.g.,
  [http://localhost:4444](http://localhost:4444)).

## Building the Docs for a Documentation Release

To build the docs for a given release, run the bash script `build-docs.sh` in the local folder. Start with getting
the help text (`./build-docs.sh -h`), and then go from there.

The steps of the build-docs.sh script is as follows:

- Clone ACA-Py into the `/tmp` folder.
  - Use the `-k` option to skip this step.
- Checkout the ACA-Py version of interest (`-m <tag>` option, defaulting to `main`).
- Execute the `<version>.sh` script if it exists in the `/scripts` folder of the repository.

The `<version>.sh` script does the following:

- Deletes the current contents of the `/docs` folder in the repository.
- Removes from the `mkdocs.yml` file the `nav:` section of the file.
- Adds in a new `nav:` section in the `mkdocs.yml` that is inline in the script.
- Executes a series of either `cp` commands or `sed` pipelines to extract a
  documentation file from the `/tmp` clone of ACA-Py into the `/docs` folder of
  this repo.

Ideally, that happens without errors, but if there are errors, fix them up.

Finally, it's time to publish the site. To do so, simply run `mkdocs` from
the root of the repository. If all goes well, the current set of docs will
be published and you will be able to see the documents in your browser.

### Fixing Errors

If there are errors in the building or deploying of the site, make fixes to the
`<version>.sh` (and rerun it). A good flow is to run:

`./build-docs.sh -k; mkdocs`

Fix an error, Ctrl-C to stop the current serving of the pages and rerun the command.
There are live updates on the site as you make changes to the pages, but changes
to `mkdocs.yml` are not picked up live, and you must restart the server to see those.

Remember as well, that fixing the copy of the docs is **NOT** sufficient--you need
to make the changes during the copy process from `/tmp` to `/docs` in the `<version>.sh`
file, as we will need to run the process over if we change anything fundamental about the
site (e.g. the colours, logos, etc.). The content **MUST** remain faithful to the content
in the ACA-Py repository at the time the version was tagged, but the documentation site
may evolve, requiring building the content again from time to time.

#### Adding and Fixing Content

The basic process for adding content to the site (e.g. a new Markdown file from ACA-Py) is:

- Update the version-specific `nav:` in the `<version>.sh` file.
- Copy the file from the `/tmp` folder to the appropriate place in the `/docs` folder.
- If necessary, convert the copy (`cp`) to a `sed` command to update a part of the content
necessary. Mostly, such changes are required for relative links to the correct other place in the
folder.  The `main.sh` file has a number of examples of `sed` conversions:
  - Documents formerly in the same folder now in another one.
  - Documents copied from one location (e.g., `GettingStarted...`) into another (e.g., `features`).
  - Images in other locations.
  - Relative links to code files to absolute links in the ACA-Py repository.
  - Fixing multiple things via a pipeline of `sed` commands.

## Preparing Releases for Publication

Here is the expectation for adding new releases to the site. This section is subject to change.
We'll assume that the repository is setup, has the `main` branch, and is published on gh-pages
with the `main` (aka `latest`) version, and perhaps another version. You want to create a new
release.

- Fork the repository and install the prerequisites.
- Create and checkout a new branch to build your version.
- Copy the `scripts/main.sh` file to `<version>.sh` for the version you are going to create.
- Run `./build-docs.sh -t <version>` to clone and checkout ACA-Py into the `/tmp` folder
and to run the version-specific script to create the docs.
- Fix any errors encountered in the `<versions>.sh` file.
- Test the published site locally and fix any errors encountered in the `<versions>.sh` file.
- When ready, create a pull request that will be merged into a new branch in the target repository.
  - The new branch **MUST** be called `v<version>` (e.g., `v0.8.0`).

When the new branch is merged, the new version should be automatically published.

To update an existing branch, in your local repo:

- Checkout the existing branch (e.g., `git checkout v0.8.0`).
- Checkout and create a new local branch (e.g., `git checkout -b fix-v0.8.0`)
- Make the necessary changes.
- Submit a pull request against the version branch.
