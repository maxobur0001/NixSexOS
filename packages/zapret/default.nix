{pkgs-unstable, ...}: {
  services.zapret = {
    enable = true;
    package = pkgs-unstable.zapret;
    params = [
      "--filter-udp=443 --hostlist=${./lists/list-general.txt} --hostlist-exclude=${./lists/list-exclude.txt} --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic=${./fake/quic_initial_www_google_com.bin} --new ^"

      "--filter-udp=19294-19344,50000-50100 --filter-l7=discord,stun --dpi-desync=fake --dpi-desync-repeats=6 --new ^"

      "--filter-tcp=2053,2083,2087,2096,8443 --hostlist-domains=discord.media --dpi-desync=fake,fakedsplit --dpi-desync-repeats=6 --dpi-desync-fooling=ts --dpi-desync-fakedsplit-pattern=0x00 --dpi-desync-fake-tls=${./fake/tls_clienthello_www_google_com.bin} --new ^"

      "--filter-tcp=443 --hostlist=${./lists/list-google.txt} --dpi-desync=fake,fakedsplit --dpi-desync-repeats=6 --dpi-desync-fooling=ts --dpi-desync-fakedsplit-pattern=0x00 --dpi-desync-fake-tls=${./fake/tls_clienthello_www_google_com.bin} --new ^"

      "--filter-tcp=80,443 --hostlist=${./lists/list-general.txt} --hostlist-exclude=${./lists/list-exclude.txt} --dpi-desync=fake,fakedsplit --dpi-desync-repeats=6 --dpi-desync-fooling=ts --dpi-desync-fakedsplit-pattern=0x00 --dpi-desync-fake-tls=${./fake/tls_clienthello_www_google_com.bin} --new ^"

      "--filter-udp=443 --ipset=${./lists/ipset-all.txt} --hostlist-exclude=${./lists/list-exclude.txt} --ipset-exclude=${./lists/ipset-exclude.txt} --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic=${./fake/quic_initial_www_google_com.bin} --new ^"
    ];
    whitelist = [ ];
  };
}
