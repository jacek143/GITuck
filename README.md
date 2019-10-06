# GITuck

## How does it work?
`./GITuck <path-to-your-repo>`

GITuck will perform `git remote update --prune` on your repository and inform you with a magnificent __QUACK__ if there is something new. You can use Cron to periodically run GITuck in the background.

## Dependencies
- [aplay](https://linux.die.net/man/1/aplay) - It is standard player for ALSA soundcard driver so it is present on most of Linux distributions.
