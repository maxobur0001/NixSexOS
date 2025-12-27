{...}: {
  services.zapret = {
    enable = true;
    params = [
      "--comment Telegram (WebRTC) --filter-udp=1400 --filter-l7=stun --dpi-desync=fake --dpi-desync-fake-stun=0x00 --new ^"

      "--comment WhatsApp (WebRTC) [WIP] --filter-udp=3478-3482,3484,3488,3489,3491-3493,3495-3497 --filter-l7=stun --dpi-desync=fake --dpi-desync-fake-stun=0x00 --dpi-desync-repeats=6 --new ^"

      "--comment Discord (WebRTC) --filter-udp=19294-19344,50000-50032 --filter-l7=discord,stun --dpi-desync=fake --dpi-desync-fake-discord=${./fake/quic_initial_www_google_com.bin} --dpi-desync-fake-stun=${./fake/quic_initial_www_google_com.bin} --dpi-desync-repeats=6 --new ^"

      "--comment Discord (Gateway) --filter-tcp=443 --hostlist-domains=gateway.discord.gg --dpi-desync=fake --dpi-desync-fake-tls-mod=rnd,dupsid,sni=max.ru --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-repeats=6 --new ^"

      "--comment Discord --filter-tcp=443,2053,2083,2087,2096,8443 --hostlist-domains=dis.gd,discord-attachments-uploads-prd.storage.googleapis.com,discord.app,discord.co,discord.com,discord.design,discord.dev,discord.gift,discord.gifts,discord.gg,discord.media,discord.new,discord.store,discord.status,discord-activities.com,discordactivities.com,discordapp.com,cdn.discordapp.com,discordapp.net,media.discordapp.net,images-ext-1.discordapp.net,updates.discord.com,stable.dl2.discordapp.net,discordcdn.com,discordmerch.com,discordpartygames.com,discordsays.com,discordsez.com,discordstatus.com --hostlist-exclude-domains=gateway.discord.gg --dpi-desync=fake --dpi-desync-fake-tls-mod=rnd,dupsid,sni=max.ru --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-repeats=6 --new ^"

      "--comment YouTube QUIC/QUIC --filter-udp=443 --hostlist=${./lists/list-general.txt} --dpi-desync=fake --dpi-desync-repeats=11 --dpi-desync-fake-quic=${./fake/quic_initial_www_google_com.bin} --new ^"

      "--comment YouTube Streaming/HTTP [WIP] --filter-tcp=80 --hostlist=${./lists/list-general.txt} --dpi-desync=fake,multisplit --dpi-desync-fake-tls-mod=rnd,dupsid,sni=max.ru --dpi-desync-fooling=badseq --new ^"

      "--comment YouTube --filter-tcp=443 --hostlist-domains=yt3.ggpht.com,yt4.ggpht.com,yt3.googleusercontent.com,googlevideo.com,jnn-pa.googleapis.com,wide-youtube.l.google.com,youtube-nocookie.com,youtube-ui.l.google.com,youtube.com,youtubeembeddedplayer.googleapis.com,youtubekids.com,youtubei.googleapis.com,youtu.be,yt-video-upload.l.google.com,ytimg.com,ytimg.l.google.com --dpi-desync=multisplit --dpi-desync-split-pos=1,midsld --dpi-desync-split-seqovl=681 --dpi-desync-split-seqovl-pattern=${./fake/tls_clienthello_www_google_com.bin} --new ^"

      "--comment list-general+Extra --filter-tcp=443 --hostlist-exclude-domains=dis.gd,discord-attachments-uploads-prd.storage.googleapis.com,discord.app,discord.co,discord.com,updates.discord.com,discord.design,discord.dev,discord.gift,discord.gifts,discord.gg,gateway.discord.gg,discord.media,discord.new,discord.store,discord.status,discord-activities.com,discordactivities.com,discordapp.com,cdn.discordapp.com,discordapp.net,media.discordapp.net,images-ext-1.discordapp.net,stable.dl2.discordapp.net,discordcdn.com,discordmerch.com,discordpartygames.com,discordsays.com,discordsez.com,discordstatus.com,yt3.ggpht.com,yt4.ggpht.com,yt3.googleusercontent.com,googlevideo.com,jnn-pa.googleapis.com,wide-youtube.l.google.com,youtube-nocookie.com,youtube-ui.l.google.com,youtube.com,youtubeembeddedplayer.googleapis.com,youtubekids.com,youtubei.googleapis.com,youtu.be,yt-video-upload.l.google.com,ytimg.com,ytimg.l.google.com --hostlist=${./lists/list-general.txt} --hostlist-domains=adguard.com,adguard-vpn.com,totallyacdn.com,whiskergalaxy.com,windscribe.com,windscribe.net,soundcloud.com,sndcdn.com,soundcloud.cloud,nexusmods.com,nexus-cdn.com,prostovpn.org,html-classic.itch.zone,speedtest.net,softportal.com,ntc.party,mega.nz,mega.co.nz,modrinth.com,forgecdn.net,minecraftforge.net,neoforged.net,essential.gg,imagedelivery.net,dns.malw.link,cloudflare-gateway.com,quora.com,amazon.com,awsstatic.com,amazonaws.com,awsapps.com,roblox.com,rbxcdn.com,whatsapp.com,whatsapp.net --dpi-desync=fake,multisplit --dpi-desync-fake-tls-mod=rnd,dupsid,sni=max.ru --dpi-desync-split-pos=1,host --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=2 --new ^"

      "--comment Cloudflare WARP Gateway(1.1.1.1, 1.0.0.1) --filter-tcp=443,853 --ipset-ip=162.159.36.1,162.159.46.1,2606:4700:4700::1111,2606:4700:4700::1001 --dpi-desync=syndata,fake --dpi-desync-cutoff=n3 --dpi-desync-fooling=badseq --new ^"

      "--comment WireGuard handshake --filter-udp=1-65535 --filter-l7=wireguard --dpi-desync=fake --dpi-desync-fake-wireguard=${./fake/quic_initial_www_google_com.bin} --dpi-desync-cutoff=n2 --dpi-desync-repeats=4 --new ^"

      "--comment Roblox(UDP) [WIP] --filter-udp=49152-65535 --ipset-ip=103.140.28.0/23,128.116.0.0/17,141.193.3.0/24,205.201.62.0/24,2620:2b:e000::/48,2620:135:6000::/40,2620:135:6004::/48,2620:135:6007::/48,2620:135:6008::/48,2620:135:6009::/48,2620:135:600a::/48,2620:135:600b::/48,2620:135:600c::/48,2620:135:600d::/48,2620:135:600e::/48,2620:135:6041::/48 --dpi-desync=fake --dpi-desync-fake-unknown-udp=0x00 --dpi-desync-any-protocol --dpi-desync-cutoff=n2 --new ^"

      "--comment IP set(TCP 80) [WIP] --filter-tcp=80 --ipset=${./lists/ipset-all.txt} --dpi-desync=fake,multisplit --dpi-desync-fake-tls-mod=rnd,dupsid,sni=max.ru --dpi-desync-fooling=badseq --new ^"

      "--comment IP set(TCP 443) --filter-tcp=443 --ipset=${./lists/ipset-all.txt} --dpi-desync=fake --dpi-desync-fake-tls-mod=none --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=2 --dpi-desync-repeats=6 --new ^"

      "--comment IP set(UDP 443) --filter-udp=443 --ipset=${./lists/ipset-all.txt} --dpi-desync=fake --dpi-desync-repeats=6 --new ^"
    ];
    whitelist = [ ];
  };
}
