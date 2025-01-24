# Engage Press monorepo

This monorepo contains all of my various typst projects.  The monorepo format
was chosen because these projects usually have a lot in common with only small
details differing.  I wanted to have a common build system that would perform
all the usual tasks - live preview, prod build, etc. - without having to write
either a build.sh or Makefile for every single project, since so much would be
in common.  In the end, I realized that the best way to do this would be to
store all my typst projects in a common hierarchy.

## Scripts

Generally the commands are chatty. They are not meant to be Unix Philosophy™
components.  Do not parse their output.

### Typst wrapper

Instead of running typst proper, you can run typst.sh:

    ./typst.sh [subcommand] [args...]

This will append all the necessary arguments to & set up all the relevant
variables for the typst command.

### Build entire project

    ./build.sh project-name

Builds the project in `proj/project-name`. Output goes to `output/project-name`.

### Preview file

    ./preview.sh [-o] path-to-file

Generates a preview of the given file using `typst watch`. Output goes to
`output/preview/(basename).pdf`.  The script will guess the project name and
load anything relevant in from `defs.sh`.

If given the argument `-o`, the script will also `open` or `xdg-open` the file -
depending on your PDF viewer, live preview updates may or may not be supported.
I use Atril Document Viewer for this purpose.  To override the open command, the
environment variable `EPM_PDF_OPEN` can be set, e.g.

    EPM_PDF_OPEN=atril ./preview.sh -o path-to-file

### New project

    ./new-proj.sh project-name

Generates a new project, by copying `templates` to `proj/project-name`

## Data directories

Directories marked `-private` are not tracked by git - usually due to copyright
concerns.  Largely I focus on open content, but I also have projects which are
not mine to share (for example, remastering a poor scan of a rare book I own in
order to use a copy rather than risk damaging a historical artifact).

- `common` contains libraries, include files, etc.
- `fonts` contains binary font files. Generally I include both an OTF and a TTF
  file.  In the majority of cases the OTF should be used.  The TTF is only
  included to satisfy older programs that do not support OTFs.
  * `otf2ttf.sh` is a script that batch creates TTFs out of any OTFs that have
    not already been converted to TTF.
- `src` contains per-project subdirectories.
  * `defs.sh` - shell script, sourced by the build & preview commands, that
    defines the input files to work on & any project-specific metadata.
- `templates` contains templates to copy into new projects.
- `hooks` contains hooks the monorepo uses. At the moment, that's just a
  pre-commit hook to ensure any shell scripts pass shellcheck.
  * `install.sh` copies the hooks to `.git/hooks/`, in effect installing them.
- `output` is the output directory.  Output is split up per-project.

## Licenses

- Code (`.sh` files) is licensed GPLv3 - see LICENSE.code
- Fonts are either copyleft or OFL 1.1 - see LICENSE.fonts
- Text is licensed CC-BY-SA 4.0 - see LICENSE.text
- Images are from public domain sources, unless otherwise noted.
