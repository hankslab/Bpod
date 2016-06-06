# Bpod

This is a fork of [sanworks/Bpod](https://github.com/sanworks/Bpod)

The goal of this fork is to add support for a Protocol Class that will get run by a dispatcher similar to what was used in the [Brody Lab](http://brodywiki.princeton.edu/bcontrol/index.php/Main_Page)

Additional features that might emerge on this fork (or may emerge as a separate project elsewhere):
* Support for getting settings from / pushing data to the network rather than files.
    - Either directly to a database
    - or via `zeromq` to allow for pub/sub and pushing data saving to a background thread.
* Web-based interfaces that act as a dashboard / control center for a large number of Bpod boxes.

