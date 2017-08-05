# Homepage
[![Build Status][status-image]][status-url] [![Open Issues][issues-image]][issues-url]

> Homepage for Screwdriver CD service

[Screwdriver](http://screwdriver.cd) is a self-contained, pluggable service to help you build, test, and continuously deliver software using the latest containerization technologies.

## To start using Screwdriver

For more information about Screwdriver, check out our [guide](http://docs.screwdriver.cd).

## To start contributing to Screwdriver

Have a look at our guidelines, as well as pointers on where to start making changes, in our [contributing guide](http://docs.screwdriver.cd/about/contributing).

### Usage

```bash
$ bundle install
$ bundle exec rake --tasks
rake build    # Generate documentation
rake doctor   # Test configuration
rake publish  # Generate and publish documentation to gh-pages
rake serve    # Run a local documentation server
```

### License

Code licensed under the BSD 3-Clause license. See LICENSE file for terms.

[issues-image]: https://img.shields.io/github/issues/screwdriver-cd/screwdriver.svg
[issues-url]: https://github.com/screwdriver-cd/screwdriver/issues
[status-image]: https://cd.screwdriver.cd/pipelines/32/badge
[status-url]: https://cd.screwdriver.cd/pipelines/32
