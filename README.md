A work in progress development container for Apostrophe.

## Build or update the container

On a new machine, or when you want the latest upstream packages in it, etc.:

```bash
./update
```

## Start the container

```bash
./start
```

## Open a shell in the container

```bash
./shell
```

You're in `/persistent/workspace`, a good place to `git clone` projects and get to work. This is part of a **named volume**, so as long as you don't delete all of your Docker volumes it should stick around, **even if you rebuild the container.**

## Edit your code on the host

```bash
./mount
cd ~/persistent
cd workspace
cd myproject
code .
```

The host sees the code via a Samba share that runs inside the container, which provides access to edit code without a heavy impact on performance inside the container. The use of Samba's `unix extensions = yes` feature allows `chmod` and friends to work normally even though this is traditionally a Windows file-sharing technology.

## Access a website running in the container

```bash
http://localhost:3000/
```

If you don't like opening port 3000, you can change the `update` script to map a different host port.

## Stop the container

```bash
./stop
```
