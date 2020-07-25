# BTWifi Login Scripts
BASH Shell scripts enabling automated terminal connection to BT Wi-Fi networks. They can be run standalone or you can set them up to run as a scheduled task (though I haven't got any scripts for this here).

## Why write these?
I don't have a Wi-Fi connection where I am right now, nor a data connection as I didn't see the point.

However, there _are_ two BTWi-Fi broadcasts across the road which keep overlapping one another - and I keep getting logged out. I also don't always have a GUI to hand, but do have a Linux terminal I might be using (such as RetroPie's, since I keep that on a separate stick to standard Raspbian - which I managed to get working on XFCE with only the minimal image via this method).

Not only that, but to save myself wasting time opening a web browser, I can simply run the script from the terminal (or even configure it to run on startup on some sort of scheduled task).

## Issues/Limitations
* No Windows native version. If anyone does do one, feel free to tell me so I can add it to the readme for those looking for it.
* Might get logout issues or absurd dropouts, like me. Disabling any 'roaming' feature on your WLAN receiver seems to help this if posssible, check your network manager/driver settings for something like that.
* Maximum download speed is limited to about 1MiB per second (or in ISP scam-marketing words, 10Mbps).
* Your IP will bounce all around the UK, so have fun with random security question crap on some sites reasonably often. (This is the same infuriation I feel if someone was to allow a good packet of crisps to go all hard and manky by leaving it in the cupboard for over two months.)

## Licence
This is pretty much public domain, I don't really care what is done with the scripts other than that you get something out of them I guess.
I mean, I copied much of it from an old gist from 2016 (which is linked in the script itself), adapting it to work with current BT Wi-Fi services (seems like they haven't bothered to change much aside from the domain name and 'removing' FON).
