# ubv-remux-docker
Docker container implementing petergeneric's unifi-protect-remux

# About

Docker container that includes petergeneric's [Unifi-Protect-Remux](https://github.com/petergeneric/unifi-protect-remux/) and required dependencies, and a helper script for either single UBV files or to help automate large batches.

# Usage


```
docker run --rm \
  -v /somepath/somedir:/remux \
  tokugawaheavyindustries/ubv-remux-docker \
  /remux 
```

Where `/somepath/somedir` is the location of your ubv files.  You may also pass `-with-audio` to extract the audio as well:

```
[...]
tokugawaheavyindustries/ubv-remux-docker \
/remux \
-with-audio
```

The last line, `/remux`, is the location of your ubv files.  As the volume map is static as `/remux`, this is sufficient to process all ubv files contained in the folder.  However, you may specify a single file to process:

```
[...]
tokugawaheavyindustries/ubv-remux-docker \
/remux/B4FBE49E90A7_0_rotating_1586463298463.ubv \
-with-audio
```
