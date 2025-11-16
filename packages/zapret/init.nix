{config, pkgs, ...}: {
  services.zapret = {
    enable = true;
    params = [
      "--comment Discord (RTC) --filter-udp=19294-19344,50000-50100 --filter-l7=discord,stun --dpi-desync=fake --dpi-desync-repeats=6 --new ^"
      "--comment Discord --filter-tcp=443,2053,2083,2087,2096,8443 --hostlist-domains=dis.gd,discord-attachments-uploads-prd.storage.googleapis.com,discord.app,discord.co,discord.com,discord.design,discord.dev,discord.gift,discord.gifts,discord.gg,discord.media,discord.new,discord.store,discord.status,discord-activities.com,discordactivities.com,discordapp.com,cdn.discordapp.com,discordapp.net,media.discordapp.net,images-ext-1.discordapp.net,updates.discord.com,stable.dl2.discordapp.net,discordcdn.com,discordmerch.com,discordpartygames.com,discordsays.com,discordsez.com --hostlist-exclude-domains=gateway.discord.gg --dpi-desync=fake --dpi-desync-fake-tls-mod=rnd,dupsid --dpi-desync-repeats=6 --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --new ^"
      "--comment Discord (Gateway) --filter-tcp=443 --hostlist-domains=gateway.discord.gg --dpi-desync=fake --dpi-desync-fake-tls-mod=rnd,dupsid,sni=yandex.ru --dpi-desync-repeats=6 --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --new ^"
      "--comment list-general+Extra --filter-tcp=443 --hostlist-domains=nixos.com,mynixos.com,broadcom.com,adguard.com,adguard-vpn.com,totallyacdn.com,whiskergalaxy.com,windscribe.com,windscribe.net,cloudflareclient.com,soundcloud.com,sndcdn.com,soundcloud.cloud,nexusmods.com,nexus-cdn.com,supporter-files.nexus-cdn.com,prostovpn.org,html-classic.itch.zone --dpi-desync=fake,multisplit --dpi-desync-fake-tls-mod=rnd,dupsid,sni=yandex.ru --dpi-desync-split-pos=1 --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --new ^"
    ];
    whitelist = [ ];
  };
}
