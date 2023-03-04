{ 
    "name": "komga", 
    "official": false,
    "release": "13.1-RELEASE", 
    "artifact": "https://github.com/r2d2/truenas-plugin-komga.git", 
    "properties": 
    {
        "boot": "on", 
        "mount_fdescfs": "yes",
        "mount_procfs": "yes",
        "dhcp":"1"
    },

    "pkgs": [ "openjdk11-jre", "sqlite3" ], 

    "packagesite": "http://pkg.FreeBSD.org/${ABI}/quarterly", 
 
    "fingerprints": {
          "plugin-default": [ { 
              "function": "sha256", 
              "fingerprint": "b0170035af3acc5f3f3ae1859dc717101b4e6c1d0a794ad554928ca0cbb2f438"
              }
            ]
    }
}
