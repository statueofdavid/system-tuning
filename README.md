# system-tuning
got a machine from joaks and well figured I drop my tuning ramblings in a repo... not really sure if this is because I am just trying to hit my daily commit goals or if dropping system configurations is a good idea

so after some research, I think the best place to get started is (BDdddddddddddddddd)... the Linux Namespaces API.  Here is a list of them:
1. cgroup
2. IPC
3. Net
4. Mnt
5. User
6. UTS

This feels like a big idea and for those know me this is typical. With that said, I have unknowingly used them and now that I have some decent consumer horsepower, albeit circa 2014/2015 compute, I believe I should explore them intentionally while I attempt to build a system that can handle several game servers initialList(Minecraft, Terarria, ARK:Survival, Rust?, CoreKeeper?, GarrysMod?), and some devops build server action for my projects of feverish delusion (useful, declared_space, soundz_from_da_bog, yage, and chaos).

... this is yet another one of my project ideas (yaoompi) ...

hoping this one happens though 'cause, at the time of this writing, I believe this is the one to the unlock the rest (tottutr) :^)

rando thought from my inital dive, "...isolation is the first step in implementing a more secure system..."

also thinking about whether or not I eventually clean up this readme or if I keep it to doc my journey... solution: clean up it up once declared_space has a blog section and this may be my first post on it ¯\_(ツ)_/¯

So lets think through some use cases for each namespace... well what is it at a high level:
1. How does it function?
2. Are there performance advantages?
3. What makes them more secure?

... future thought ... 
Are there similar features in other operating systems?

so how does the namespace api function?
... well taking a look at the official-ish api doc, namespace man page (https://man7.org/linux/man-pages/man7/namespaces.7.html)
... the api has 4 system calls:
    1. clone()
      - simply put -> it creates a child a process
      - this is similar to fork() but with clone() the caller may control:
        1. shared virtual address space
        2. table of file descriptors
        3. table of signal handlers
      - so much more...
      - CURRENT ISSUE: I can not figure out how to call clone() from a terminal
      - it seems like the unshare command is the way to create namespaces from a terminal
      - possibly more to come but in the near term I have no examples...
    2. 
