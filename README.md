# Official Node image with xvfb

For use with automation tools such as [Nightmare](http://www.nightmarejs.org/)

Follows from the thread at https://github.com/segmentio/nightmare/issues/224

Provides nothing more than the pre-requisites to allow a bit of flexibility.

If running nightmare for automation the following may work:

`DEBUG=nightmare xvfb-run --server-args="-screen 0 1024x768x24" yarn <your-command>`
