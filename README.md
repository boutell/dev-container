```
# /etc/ganesha/ganesha.conf
{
        Export_Id = 2;
        Path = /mnt/storage1;
        Pseudo = /mnt/storage1;
        Protocols = 3,4;
        Access_Type = RW;
        Squash = None;
        FSAL
        {
                Name = VFS;
        }
        CLIENT
        {
                Clients = 192.168.0.12;
        }
}
```